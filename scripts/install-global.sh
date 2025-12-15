#!/bin/bash
# ========================================
# AIDLC Global Installation Script
# ========================================
# Run this script to install AIDLC commands globally

set -e

echo "🚀 AIDLC Global Installation"
echo "============================"

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Get script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_ROOT="$( cd "$SCRIPT_DIR/.." && pwd )"

cd "$PROJECT_ROOT"

# Determine global cursor directory
CURSOR_HOME="$HOME/.cursor"

echo ""
echo "📁 Source: $PROJECT_ROOT/.cursor/"
echo "📁 Target: $CURSOR_HOME/"
echo ""

# Create directories if not exist
mkdir -p "$CURSOR_HOME/commands"
mkdir -p "$CURSOR_HOME/rules"

# Copy commands
echo "📋 Copying commands..."
cp -r .cursor/commands/* "$CURSOR_HOME/commands/"
echo -e "${GREEN}   ✅ Commands installed${NC}"

# Copy rules
echo "📚 Copying rules..."
cp -r .cursor/rules/* "$CURSOR_HOME/rules/"
echo -e "${GREEN}   ✅ Rules installed${NC}"

echo ""
echo "============================"
echo -e "${GREEN}✅ Installation complete!${NC}"
echo ""
echo -e "${YELLOW}⚠️  Please restart Cursor IDE to use the commands${NC}"
echo ""
echo "Usage:"
echo "  1. Open Cursor Chat (Cmd+L / Ctrl+L)"
echo "  2. Type /aidlc"
echo ""

