#!/bin/bash

# 🐧 Linux Admin Toolkit Script

echo "=============================="
echo " Linux Admin Toolkit "
echo "=============================="

while true
do
    echo ""
    echo "1. Show System Info"
    echo "2. Show Disk Usage"
    echo "3. Show Memory Usage"
    echo "4. List Running Processes"
    echo "5. Create New User"
    echo "6. Delete User"
    echo "7. Update System"
    echo "8. Exit"
    echo ""
    read -p "Enter your choice: " choice

    case $choice in
        1)
            echo "System Information:"
            uname -a
            ;;
        2)
            echo "Disk Usage:"
            df -h
            ;;
        3)
            echo "Memory Usage:"
            free -h
            ;;
        4)
            echo "Running Processes:"
            ps aux | less
            ;;
        5)
            read -p "Enter username: " username
            sudo adduser $username
            ;;
        6)
            read -p "Enter username to delete: " username
            sudo deluser $username
            ;;
        7)
            echo "Updating System..."
            sudo apt update && sudo apt upgrade -y
            ;;
        8)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice!"
            ;;
    esac
done
