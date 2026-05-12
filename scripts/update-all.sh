#!/usr/bin/env bash
#
# Update all Claude Code package channels
#
# Usage: ./scripts/update-all.sh [native-channel]
#
# Arguments:
#   native-channel - "stable", "latest", or "all" (default: all)
#                    Passed to update-native.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "=========================================="
echo "Updating Claude Code"
echo "=========================================="
echo ""

"$SCRIPT_DIR/update-native.sh" "${1:-all}"

echo ""
echo "=========================================="
echo "Update complete!"
echo "=========================================="
