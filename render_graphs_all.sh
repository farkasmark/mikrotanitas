#!/bin/bash

# Check if render_graphs.sh exists and is executable
if [ ! -x "./render_graphs.sh" ]; then
  echo "Error: render_graphs.sh not found or not executable."
  exit 1
fi

# Find all .dot files in the current directory
dot_files=$(ls *.dot 2> /dev/null)

# Check if there are any .dot files in the directory
if [ -z "$dot_files" ]; then
  echo "No .dot files found in the current directory."
  exit 1
fi

# Loop through all found .dot files and call render_graphs.sh for each
for file in $dot_files; do
  echo "Rendering $file..."
  ./render_graphs.sh "$file"  # Call render_graphs.sh for each .dot file
done

echo "Rendering completed for all .dot files."
