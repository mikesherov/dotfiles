#!/bin/bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Create ~/.claude if it doesn't exist
mkdir -p ~/.claude

# Symlink claude config files
for file in "$DOTFILES_DIR/claude/"*; do
    filename=$(basename "$file")
    target="$HOME/.claude/$filename"

    if [ -L "$target" ]; then
        echo "Removing existing symlink: $target"
        rm "$target"
    elif [ -e "$target" ]; then
        echo "Backing up existing file: $target -> $target.backup"
        mv "$target" "$target.backup"
    fi

    echo "Linking: $file -> $target"
    ln -s "$file" "$target"
done

echo "Done!"
