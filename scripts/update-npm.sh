#!/usr/bin/env bash
#
# Update Claude Code npm package version in sources.nix
#
# Usage: ./scripts/update-npm.sh [--version VERSION]
#
# Options:
#   --version VERSION  Update to specific version (default: latest from npm)
#
# This script:
# 1. Fetches latest version from npm registry
# 2. Gets the tarball hash using nix-prefetch-url
# 3. Updates sources.nix with new version and hash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCES_NIX="$SCRIPT_DIR/../sources.nix"

readonly NPM_REGISTRY_URL="https://registry.npmjs.org"
readonly PACKAGE_NAME="@anthropic-ai/claude-code"

# Parse arguments
TARGET_VERSION=""
while [[ $# -gt 0 ]]; do
    case $1 in
        --version)
            TARGET_VERSION="$2"
            shift 2
            ;;
        *)
            echo "Unknown option: $1"
            echo "Usage: $0 [--version VERSION]"
            exit 1
            ;;
    esac
done

# Get current version from sources.nix
get_current_version() {
    grep -A2 '^  npm = {' "$SOURCES_NIX" | grep 'version = "' | sed 's/.*version = "\([^"]*\)".*/\1/'
}

# Get latest version from npm
get_latest_version() {
    curl -fsSL "$NPM_REGISTRY_URL/$PACKAGE_NAME/latest" | sed -n 's/.*"version":"\([^"]*\)".*/\1/p'
}

# Fetch tarball hash using nix-prefetch-url
fetch_tarball_hash() {
    local version="$1"
    local tarball_url="$NPM_REGISTRY_URL/$PACKAGE_NAME/-/claude-code-$version.tgz"
    nix-prefetch-url "$tarball_url" 2>/dev/null | tail -1 | tr -d '\n'
}

echo "=== Updating npm package ==="

CURRENT_VERSION=$(get_current_version)
echo "Current version: $CURRENT_VERSION"

if [ -n "$TARGET_VERSION" ]; then
    NEW_VERSION="$TARGET_VERSION"
else
    echo "Fetching latest version from npm..."
    NEW_VERSION=$(get_latest_version)
fi
echo "Remote version: $NEW_VERSION"

if [ "$NEW_VERSION" = "$CURRENT_VERSION" ]; then
    echo "npm package is already up to date!"
    exit 0
fi

echo "Updating npm from $CURRENT_VERSION to $NEW_VERSION..."

# Fetch tarball hash
echo "Fetching tarball hash..."
NEW_HASH=$(fetch_tarball_hash "$NEW_VERSION")
if [ -z "$NEW_HASH" ]; then
    echo "Error: Failed to fetch tarball hash"
    exit 1
fi
echo "Tarball hash: $NEW_HASH"

# Update sources.nix - update the npm section
tmp_file=$(mktemp)
awk -v version="$NEW_VERSION" -v hash="$NEW_HASH" '
BEGIN { in_npm = 0 }
/^  npm = \{/ { in_npm = 1 }
in_npm && /version = "/ {
    sub(/version = "[^"]*"/, "version = \"" version "\"")
}
in_npm && /sha256 = "/ {
    sub(/sha256 = "[^"]*"/, "sha256 = \"" hash "\"")
    in_npm = 0
}
{ print }
' "$SOURCES_NIX" > "$tmp_file"

mv "$tmp_file" "$SOURCES_NIX"

echo "Updated npm to version $NEW_VERSION"

# Verify build works
echo ""
echo "Testing build..."
cd "$SCRIPT_DIR/.."
if nix build .#npm --no-link 2>/dev/null; then
    echo "Build successful!"
else
    echo "Build failed! You may need to roll back:"
    echo "  git checkout sources.nix"
    exit 1
fi

echo ""
echo "Update complete!"
echo ""
echo "Don't forget to commit the changes:"
echo "  git add sources.nix && git commit -m \"npm: update to $NEW_VERSION\""
