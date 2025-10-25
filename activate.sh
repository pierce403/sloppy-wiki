#!/bin/bash
# activate.sh - Set up Python virtual environment and install dependencies
#
# Usage: source activate.sh
#
# This script creates a virtual environment (if it doesn't exist) and installs
# all required Python packages from requirements.txt

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Setting up Sloppy Wiki environment...${NC}"

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo -e "${GREEN}Creating virtual environment...${NC}"
    python3 -m venv venv
fi

# Activate the virtual environment
echo -e "${GREEN}Activating virtual environment...${NC}"
source venv/bin/activate

# Upgrade pip
echo -e "${GREEN}Upgrading pip...${NC}"
pip install --upgrade pip

# Install dependencies
echo -e "${GREEN}Installing dependencies from requirements.txt...${NC}"
pip install -r requirements.txt

echo -e "${GREEN}✓ Environment ready!${NC}"
echo -e "${YELLOW}You can now run:${NC}"
echo -e "  ${GREEN}./serve.sh${NC}  - Start development server"
echo -e "  ${GREEN}./build.sh${NC}  - Build static site"

