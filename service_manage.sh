#!/bin/bash

echo "Service management"

if ! command -v systemctl >/dev/null; then
    echo "systemctl is not available on this system."
    echo "This feature works on Ubuntu / real Linux with systemd."
    read -p "Press Enter to return..."
    exit 0
fi

read -p "Enter service name: " srv

echo "1. Start service"
echo "2. Stop service"
echo "3. Service status"

read -p "Choose: " c

case "$c" in
1) sudo systemctl start "$srv" ;;
2) sudo systemctl stop "$srv" ;;
3) systemctl status "$srv" ;;
*) echo "Invalid option" ;;
esac

read -p "Press Enter to return..."
