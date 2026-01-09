#!/usr/bin/env bash
#
# Update Claude Code npm package versions in sources.nix
#
# Usage: ./scripts/update-npm.sh
#
# This script:
# 1. Fetches stable and latest versions from npm registry dist-tags
# 2. Gets the tarball hashes using nix-prefetch-url
# 3. Updates sources.nix with new versions and hashes

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCES_NIX="$SCRIPT_DIR/../sources.nix"

readonly NPM_REGISTRY_URL="https://registry.npmjs.org"
readonly PACKAGE_NAME="@anthropic-ai/claude-code"

# Get current version from sources.nix for a channel
get_current_version() {
    local channel="$1"
    sed -n '/^  npm = {/,/^  };/p' "$SOURCES_NIX" | grep -A2 "$channel = {" | grep 'version = "' | sed 's/.*version = "\([^"]*\)".*/\1/'
}

# Get version from npm dist-tag
get_npm_version() {
    local tag="$1"
    curl -fsSL "$NPM_REGISTRY_URL/$PACKAGE_NAME" | sed -n "s/.*\"$tag\":\"\([^\"]*\)\".*/\1/p"
}

# Fetch tarball hash using nix-prefetch-url
fetch_tarball_hash() {
    local version="$1"
    local tarball_url="$NPM_REGISTRY_URL/$PACKAGE_NAME/-/claude-code-$version.tgz"
    nix-prefetch-url "$tarball_url" 2>/dev/null | tail -1 | tr -d '\n'
}

echo "=== Updating npm packages ==="

# Get current versions
STABLE_LOCAL=$(get_current_version "stable")
LATEST_LOCAL=$(get_current_version "latest")
echo "Current stable: $STABLE_LOCAL"
echo "Current latest: $LATEST_LOCAL"

# Fetch remote versions
echo "Fetching versions from npm registry..."
STABLE_REMOTE=$(get_npm_version "stable")
LATEST_REMOTE=$(get_npm_version "latest")
echo "Remote stable: $STABLE_REMOTE"
echo "Remote latest: $LATEST_REMOTE"

# Check if updates needed
STABLE_NEEDS_UPDATE=false
LATEST_NEEDS_UPDATE=false

if [ "$STABLE_REMOTE" != "$STABLE_LOCAL" ]; then
    STABLE_NEEDS_UPDATE=true
fi
if [ "$LATEST_REMOTE" != "$LATEST_LOCAL" ]; then
    LATEST_NEEDS_UPDATE=true
fi

if [ "$STABLE_NEEDS_UPDATE" = false ] && [ "$LATEST_NEEDS_UPDATE" = false ]; then
    echo "npm packages are already up to date!"
    exit 0
fi

# Fetch hashes for versions that need updating
declare -A HASHES

if [ "$STABLE_NEEDS_UPDATE" = true ]; then
    echo "Fetching hash for stable $STABLE_REMOTE..."
    HASHES["stable"]=$(fetch_tarball_hash "$STABLE_REMOTE")
    if [ -z "${HASHES["stable"]}" ]; then
        echo "Error: Failed to fetch tarball hash for stable"
        exit 1
    fi
fi

if [ "$LATEST_NEEDS_UPDATE" = true ]; then
    echo "Fetching hash for latest $LATEST_REMOTE..."
    HASHES["latest"]=$(fetch_tarball_hash "$LATEST_REMOTE")
    if [ -z "${HASHES["latest"]}" ]; then
        echo "Error: Failed to fetch tarball hash for latest"
        exit 1
    fi
fi

# Update sources.nix
tmp_file=$(mktemp)
awk -v stable_ver="$STABLE_REMOTE" -v stable_hash="${HASHES["stable"]:-}" \
    -v latest_ver="$LATEST_REMOTE" -v latest_hash="${HASHES["latest"]:-}" \
    -v stable_update="$STABLE_NEEDS_UPDATE" -v latest_update="$LATEST_NEEDS_UPDATE" '
BEGIN { in_npm = 0; in_stable = 0; in_latest = 0 }
/^  npm = \{/ { in_npm = 1 }
in_npm && /stable = \{/ { in_stable = 1 }
in_npm && /latest = \{/ { in_latest = 1 }
in_stable && stable_update == "true" && /version = "/ {
    sub(/version = "[^"]*"/, "version = \"" stable_ver "\"")
}
in_stable && stable_update == "true" && /sha256 = "/ {
    sub(/sha256 = "[^"]*"/, "sha256 = \"" stable_hash "\"")
    in_stable = 0
}
in_latest && latest_update == "true" && /version = "/ {
    sub(/version = "[^"]*"/, "version = \"" latest_ver "\"")
}
in_latest && latest_update == "true" && /sha256 = "/ {
    sub(/sha256 = "[^"]*"/, "sha256 = \"" latest_hash "\"")
    in_latest = 0
}
/^  };/ && in_npm { in_npm = 0 }
{ print }
' "$SOURCES_NIX" > "$tmp_file"

mv "$tmp_file" "$SOURCES_NIX"

echo ""
echo "Updated sources.nix"

# Verify builds work
echo ""
echo "Testing builds..."
cd "$SCRIPT_DIR/.."

BUILD_FAILED=false
for pkg in npm-stable npm-latest; do
    echo "Building $pkg..."
    if nix build ".#$pkg" --no-link 2>/dev/null; then
        echo "  $pkg: OK"
    else
        echo "  $pkg: FAILED"
        BUILD_FAILED=true
    fi
done

if [ "$BUILD_FAILED" = true ]; then
    echo ""
    echo "Build failed! You may need to roll back:"
    echo "  git checkout sources.nix"
    exit 1
fi

echo ""
echo "Update complete!"
if [ "$STABLE_NEEDS_UPDATE" = true ]; then
    echo "  stable: $STABLE_LOCAL → $STABLE_REMOTE"
fi
if [ "$LATEST_NEEDS_UPDATE" = true ]; then
    echo "  latest: $LATEST_LOCAL → $LATEST_REMOTE"
fi
