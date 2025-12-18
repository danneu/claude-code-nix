#!/usr/bin/env bash
#
# Update Claude Code native binary versions in sources.nix
#
# Usage: ./scripts/update-native.sh [channel]
#
# Arguments:
#   channel - "stable", "latest", or "all" (default: all)
#
# This script:
# 1. Fetches versions from GCS for specified channel(s)
# 2. Downloads manifests to get checksums
# 3. Updates sources.nix with new version and checksum

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCES_NIX="$SCRIPT_DIR/../sources.nix"

# Derive GCS bucket URL from official install.sh redirect
echo "Resolving download URL from https://claude.ai/install.sh..."
REDIRECT_HEADERS=$(curl -fsSI https://claude.ai/install.sh) || {
    echo "Error: Failed to fetch https://claude.ai/install.sh"
    exit 1
}
BOOTSTRAP_URL=$(echo "$REDIRECT_HEADERS" | grep -i '^location:' | awk '{print $2}' | tr -d '\r')
if [ -z "$BOOTSTRAP_URL" ]; then
    echo "Error: No redirect found from https://claude.ai/install.sh"
    exit 1
fi
GCS_BUCKET="${BOOTSTRAP_URL%/bootstrap.sh}"
echo "Using bucket: $GCS_BUCKET"

CHANNEL="${1:-all}"

# Track updated versions for commit message
STABLE_VERSION=""
LATEST_VERSION=""

update_channel() {
    local channel="$1"

    echo "=== Updating $channel channel ==="

    # Fetch version for channel
    echo "Fetching $channel version..."
    local new_version
    new_version=$(curl -fsSL "$GCS_BUCKET/$channel")
    echo "Remote version: $new_version"

    # Get current version from sources.nix
    local current_version
    current_version=$(grep -A2 "^  $channel = {" "$SOURCES_NIX" | grep 'version = "' | sed 's/.*version = "\([^"]*\)".*/\1/')
    echo "Current version: $current_version"

    if [ "$new_version" = "$current_version" ]; then
        echo "$channel is already up to date!"
        return 0
    fi

    echo "Updating $channel from $current_version to $new_version..."

    # Fetch manifest for checksums
    echo "Fetching manifest..."
    local manifest
    manifest=$(curl -fsSL "$GCS_BUCKET/$new_version/manifest.json")

    # Extract checksums for all supported platforms
    local darwin_arm64_sha256 linux_x64_sha256 linux_arm64_sha256
    darwin_arm64_sha256=$(echo "$manifest" | jq -r '.platforms["darwin-arm64"].checksum')
    linux_x64_sha256=$(echo "$manifest" | jq -r '.platforms["linux-x64"].checksum')
    linux_arm64_sha256=$(echo "$manifest" | jq -r '.platforms["linux-arm64"].checksum')

    if [ -z "$darwin_arm64_sha256" ] || [ "$darwin_arm64_sha256" = "null" ]; then
        echo "Error: Could not extract darwin-arm64 checksum from manifest"
        return 1
    fi
    if [ -z "$linux_x64_sha256" ] || [ "$linux_x64_sha256" = "null" ]; then
        echo "Error: Could not extract linux-x64 checksum from manifest"
        return 1
    fi
    if [ -z "$linux_arm64_sha256" ] || [ "$linux_arm64_sha256" = "null" ]; then
        echo "Error: Could not extract linux-arm64 checksum from manifest"
        return 1
    fi

    echo "darwin-arm64 checksum: $darwin_arm64_sha256"
    echo "linux-x64 checksum: $linux_x64_sha256"
    echo "linux-arm64 checksum: $linux_arm64_sha256"

    # Update sources.nix using a temp file for multi-line sed
    local tmp_file
    tmp_file=$(mktemp)

    awk -v channel="$channel" -v version="$new_version" \
        -v sha_darwin_arm64="$darwin_arm64_sha256" \
        -v sha_linux_x64="$linux_x64_sha256" \
        -v sha_linux_arm64="$linux_arm64_sha256" '
    BEGIN { in_channel = 0; current_platform = "" }
    /^  [a-z]+ = \{/ {
        if ($1 == channel) { in_channel = 1 } else { in_channel = 0 }
    }
    in_channel && /version = "/ {
        sub(/version = "[^"]*"/, "version = \"" version "\"")
    }
    in_channel && /"aarch64-darwin" = \{/ { current_platform = "aarch64-darwin" }
    in_channel && /"x86_64-linux" = \{/ { current_platform = "x86_64-linux" }
    in_channel && /"aarch64-linux" = \{/ { current_platform = "aarch64-linux" }
    in_channel && current_platform != "" && /sha256 = "/ {
        if (current_platform == "aarch64-darwin") {
            sub(/sha256 = "[^"]*"/, "sha256 = \"" sha_darwin_arm64 "\"")
        } else if (current_platform == "x86_64-linux") {
            sub(/sha256 = "[^"]*"/, "sha256 = \"" sha_linux_x64 "\"")
        } else if (current_platform == "aarch64-linux") {
            sub(/sha256 = "[^"]*"/, "sha256 = \"" sha_linux_arm64 "\"")
        }
        current_platform = ""
    }
    { print }
    ' "$SOURCES_NIX" > "$tmp_file"

    mv "$tmp_file" "$SOURCES_NIX"

    echo "Updated $channel to version $new_version"

    # Track for commit message
    if [ "$channel" = "stable" ]; then
        STABLE_VERSION="$new_version"
    elif [ "$channel" = "latest" ]; then
        LATEST_VERSION="$new_version"
    fi
}

# Run updates
case "$CHANNEL" in
    stable|latest)
        update_channel "$CHANNEL"
        ;;
    all)
        update_channel "stable"
        echo ""
        update_channel "latest"
        ;;
    *)
        echo "Unknown channel: $CHANNEL"
        echo "Usage: $0 [stable|latest|all]"
        exit 1
        ;;
esac

# Verify builds work
echo ""
echo "Testing builds..."
cd "$SCRIPT_DIR/.."
if nix build .#native-stable --no-link 2>/dev/null && nix build .#native-latest --no-link 2>/dev/null; then
    echo "All builds successful!"
else
    echo "Build failed! You may need to roll back:"
    echo "  git checkout sources.nix"
    exit 1
fi

echo ""

# Build commit message with versions
if [ -n "$STABLE_VERSION" ] && [ -n "$LATEST_VERSION" ]; then
    COMMIT_MSG="native: update stable to $STABLE_VERSION, latest to $LATEST_VERSION"
elif [ -n "$STABLE_VERSION" ]; then
    COMMIT_MSG="native: update stable to $STABLE_VERSION"
elif [ -n "$LATEST_VERSION" ]; then
    COMMIT_MSG="native: update latest to $LATEST_VERSION"
else
    echo "Already up to date!"
    exit 0
fi

echo "Update complete!"
echo ""
echo "Don't forget to commit the changes:"
echo "  git add sources.nix && git commit -m \"$COMMIT_MSG\""
