#!/bin/sh

set -e

# Make a temp dir
WORKDIR=$(mktemp -d)
cd "$WORKDIR"

# Clone repo
git clone https://github.com/jenna-studio/alfred-colortohex.git
cd alfred-colortohex

# Package workflow into .alfredworkflow (zip of the workflow folder)
zip -r ColorToHex.alfredworkflow info.plist colorname.py icons/ > /dev/null

# Open workflow so Alfred imports it
open ColorToHex.alfredworkflow

echo "✅ Installed ColorToHex workflow into Alfred!"