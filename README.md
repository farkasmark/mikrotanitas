# Graphviz Rendering Scripts

This repository contains two Bash scripts to automatically render Graphviz `.dot` files into both SVG and PNG formats.

- `render_graphs.sh`: Renders a single `.dot` file into both SVG and PNG.
- `render_graphs_all.sh`: Finds and renders all `.dot` files in the current directory by calling `render_graphs.sh`.

## Installation

Before using the scripts, you need to have Graphviz installed on your system. Graphviz provides the `dot` command used for rendering `.dot` files.

### Install Graphviz on Linux

On most Linux distributions (Ubuntu/Debian-based), you can install Graphviz using the package manager:

```bash
sudo apt-get update
sudo apt-get install graphviz
```

For Fedora-based distributions:

```bash
sudo dnf install graphviz
```

For Arch Linux:

```bash
sudo pacman -S graphviz
```

### Install Graphviz on macOS

If you are using macOS, you can install Graphviz using Homebrew:

```bash
brew install graphviz
```

## How to Use the Scripts

### 1. `render_graphs.sh`

This script renders a single `.dot` file into both SVG and PNG formats.

#### Usage:

```bash
./render_graphs.sh <input_file.dot>
```

#### Example:

```bash
./render_graphs.sh my_graph.dot
```

This will generate `my_graph.svg` and `my_graph.png` in the same directory as the `.dot` file.

### 2. `render_graphs_all.sh`

This script finds all `.dot` files in the current directory and calls `render_graphs.sh` to render each one.

#### Usage:

```bash
./render_graphs_all.sh
```

#### Example:

Simply run the script in the directory containing `.dot` files:

```bash
./render_graphs_all.sh
```

This will generate SVG and PNG files for all `.dot` files in the directory.

### Script Details

- `render_graphs.sh`: This script takes one argument, the name of the `.dot` file, and outputs both an SVG and a PNG of the graph.
  
- `render_graphs_all.sh`: This script loops through all `.dot` files in the current directory and calls `render_graphs.sh` to process each one.

### Make Scripts Executable

After downloading or creating the scripts, make them executable by running:

```bash
chmod +x render_graphs.sh
chmod +x render_graphs_all.sh
```

## License

This project is open-source and can be modified or distributed under the Unlicense License.
