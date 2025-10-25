#!/bin/bash
# build.sh - Build the static site for deployment
#
# Usage: ./build.sh
#
# This generates the static HTML site in the site/ directory
# Use --strict flag to fail on warnings

# Activate virtual environment if not already active
if [ -z "$VIRTUAL_ENV" ]; then
    echo "Activating virtual environment..."
    source venv/bin/activate
fi

# Build the site
echo "Building MkDocs site..."
mkdocs build --clean

echo "✓ Build complete! Static site is in the site/ directory"
echo "You can test it locally by running:"
echo "  cd site && python -m http.server 8000"

