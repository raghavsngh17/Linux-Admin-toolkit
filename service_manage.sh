#!/bin/bash

echo "===== Service Management ====="

# Check if systemctl exists
if ! command -v systemctl >/dev/null 2>&1; then
    echo "systemctl is not available on this system."
    echo "This script works on Linux systems with systemd."
    read -p "Press Enter to exit..."
    exit 1
fi

# Ask service name
read -p "Enter service name: " srv

# Check if service name is empty
if [ -z "$srv" ]; then
    echo "Service name cannot be empty."
    exit 1
fi

echo "1. Start Service"
echo "2. Stop Service"
echo "3. Service Status"
echo "4. Restart Service"

read -p "Choose an option: " c

case "$c" in
    1)
        sudo systemctl start "$srv"
        echo "Service started."
        ;;
    2)
        sudo systemctl stop "$srv"
        echo "Service stopped."
        ;;
    3)
        systemctl status "$srv"
        ;;
    4)
        sudo systemctl restart "$srv"
        echo "Service restarted."
        ;;
    *)
        echo "Invalid option selected."
        ;;
esac

read -p "Press Enter to exit..."
