#!/bin/bash
# ========================================
# AIDLC Distribution Preparation Script
# ========================================
# Run this script to prepare the repo for distribution

set -e

echo "🚀 AIDLC Distribution Preparation"
echo "=================================="

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Get script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_ROOT="$( cd "$SCRIPT_DIR/.." && pwd )"

cd "$PROJECT_ROOT"

echo ""
echo "📁 Project root: $PROJECT_ROOT"
echo ""

# Step 1: Remove aidlc-docs
if [ -d "aidlc-docs" ]; then
    echo -e "${YELLOW}⚠️  Found aidlc-docs/ folder${NC}"
    read -p "   Delete aidlc-docs/? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm -rf aidlc-docs
        echo -e "${GREEN}   ✅ Deleted aidlc-docs/${NC}"
    else
        echo -e "${YELLOW}   ⏭️  Skipped${NC}"
    fi
else
    echo -e "${GREEN}✅ No aidlc-docs/ to remove${NC}"
fi

# Step 2: Check .cursor folder
if [ -d ".cursor/commands" ] && [ -d ".cursor/rules" ]; then
    COMMAND_COUNT=$(ls -1 .cursor/commands/*.md 2>/dev/null | wc -l | tr -d ' ')
    echo -e "${GREEN}✅ .cursor/commands/ exists ($COMMAND_COUNT files)${NC}"
    echo -e "${GREEN}✅ .cursor/rules/ exists${NC}"
else
    echo -e "${RED}❌ Missing .cursor/commands/ or .cursor/rules/${NC}"
    exit 1
fi

# Step 3: Check README
if [ -f "README.md" ]; then
    echo -e "${GREEN}✅ README.md exists${NC}"
else
    echo -e "${RED}❌ README.md not found${NC}"
fi

# Step 4: Check .gitignore
if [ -f ".gitignore" ]; then
    echo -e "${GREEN}✅ .gitignore exists${NC}"
else
    echo -e "${YELLOW}⚠️  .gitignore not found${NC}"
fi

echo ""
echo "=================================="
echo -e "${GREEN}✅ Distribution preparation complete!${NC}"
echo ""
echo "📦 Distribution methods:"
echo ""
echo "   Option A: Git Repository"
echo "   -------------------------"
echo "   git push origin main"
echo ""
echo "   Option B: ZIP File"
echo "   -------------------------"
echo "   zip -r aidlc-commands.zip .cursor/ README.md DISTRIBUTION.md .gitignore"
echo ""
echo "   Option C: Copy .cursor/"
echo "   -------------------------"
echo "   cp -r .cursor/ /path/to/project/"
echo ""

