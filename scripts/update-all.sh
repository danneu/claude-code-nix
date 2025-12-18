#!/usr/bin/env bash
#
# Update all Claude Code packages (native binary and Node.js)
#
# Usage: ./scripts/update-all.sh [native-channel]
#
# Arguments:
#   native-channel - "stable", "latest", or "all" (default: all)
#                    Passed to update-native.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "=========================================="
echo "Updating Claude Code packages"
echo "=========================================="
echo ""

# Update native binary
"$SCRIPT_DIR/update-native.sh" "${1:-all}"

echo ""
echo "=========================================="
echo ""

# Update npm package
"$SCRIPT_DIR/update-npm.sh"

echo ""
echo "=========================================="
echo "All updates complete!"
echo "=========================================="
