#!/bin/bash

# Check if at least one argument (the .dot file) is provided
if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <input_file.dot>"
  exit 1
fi

# Get the input file and its base name (without extension)
input_file="$1"
base_name=$(basename "$input_file" .dot)

# Check if the input file exists
if [ ! -f "$input_file" ]; then
  echo "Error: File '$input_file' not found!"
  exit 1
fi

# Render SVG
dot -Tsvg "$input_file" -o "${base_name}.svg"
if [ $? -eq 0 ]; then
  echo "SVG file created: ${base_name}.svg"
else
  echo "Error generating SVG."
  exit 1
fi

# Render PNG
dot -Tpng "$input_file" -o "${base_name}.png"
if [ $? -eq 0 ]; then
  echo "PNG file created: ${base_name}.png"
else
  echo "Error generating PNG."
  exit 1
fi

echo "Rendering completed successfully!"
