#!/bin/bash
# serve.sh - Start MkDocs development server with live reload
#
# Usage: ./serve.sh
#
# This starts a local development server at http://127.0.0.1:8000
# The server will automatically reload when you make changes to your content

# Activate virtual environment if not already active
if [ -z "$VIRTUAL_ENV" ]; then
    echo "Activating virtual environment..."
    source venv/bin/activate
fi

# Start the development server
echo "Starting MkDocs development server..."
echo "Open http://127.0.0.1:8000 in your browser"
echo "Press Ctrl+C to stop"
mkdocs serve

