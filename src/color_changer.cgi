#!/usr/local/bin/bash


echo "Content-type: text/plain"
echo ""

# Generate a random color in hexadecimal format
color=$(printf '#%06x' $((RANDOM*RANDOM)))

# Return the color
echo "$color"
