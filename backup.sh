#!/bin/bash

read -p "Enter directory to backup: " dir
read -p "Enter destination directory: " dest

if [ ! -d "$dir" ]; then
    echo "Source directory not found."
    read -p "Press Enter to return..."
    exit 1
fi

if [ ! -d "$dest" ]; then
    echo "Destination directory not found."
    read -p "Press Enter to return..."
    exit 1
fi

name=$(basename "$dir")
file="$dest/$name-$(date +%F).tar.gz"

tar -czf "$file" "$dir"

echo "Backup created:"
echo "$file"

read -p "Press Enter to return..."
