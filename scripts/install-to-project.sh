#!/bin/bash
# ========================================
# AIDLC Project Installation Script
# ========================================
# Run: ./scripts/install-to-project.sh /path/to/your/project

set -e

echo "🚀 AIDLC Project Installation"
echo "=============================="

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Get script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_ROOT="$( cd "$SCRIPT_DIR/.." && pwd )"

# Check argument
if [ -z "$1" ]; then
    echo -e "${RED}❌ Please provide target project path${NC}"
    echo ""
    echo "Usage: $0 /path/to/your/project"
    echo ""
    exit 1
fi

TARGET_PROJECT="$1"

# Check if target exists
if [ ! -d "$TARGET_PROJECT" ]; then
    echo -e "${RED}❌ Target directory does not exist: $TARGET_PROJECT${NC}"
    exit 1
fi

echo ""
echo "📁 Source: $PROJECT_ROOT/.cursor/"
echo "📁 Target: $TARGET_PROJECT/.cursor/"
echo ""

# Check if .cursor already exists in target
if [ -d "$TARGET_PROJECT/.cursor" ]; then
    echo -e "${YELLOW}⚠️  .cursor/ already exists in target${NC}"
    read -p "   Overwrite? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Cancelled."
        exit 0
    fi
fi

# Copy .cursor folder
echo "📋 Copying AIDLC files..."
cp -r "$PROJECT_ROOT/.cursor" "$TARGET_PROJECT/"
echo -e "${GREEN}   ✅ .cursor/ installed${NC}"

echo ""
echo "=============================="
echo -e "${GREEN}✅ Installation complete!${NC}"
echo ""
echo "Next steps:"
echo "  1. cd $TARGET_PROJECT"
echo "  2. Open in Cursor IDE"
echo "  3. Restart Cursor (or reload window)"
echo "  4. Open Chat (Cmd+L) and type /aidlc"
echo ""

