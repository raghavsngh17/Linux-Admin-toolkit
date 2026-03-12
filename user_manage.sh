#!/bin/bash

echo "User management"

if [ "$EUID" -ne 0 ]; then
    echo "Note: user management requires root on real Linux systems."
fi

echo "1. Create user"
echo "2. Delete user"
read -p "Choose: " ch

case "$ch" in
1)
    read -p "Enter username: " u
    if command -v useradd >/dev/null; then
        sudo useradd "$u" 2>/dev/null || useradd "$u"
        echo "User creation attempted."
    else
        echo "useradd command not available (Termux does not support real users)."
    fi
    ;;
2)
    read -p "Enter username: " u
    if command -v userdel >/dev/null; then
        sudo userdel "$u" 2>/dev/null || userdel "$u"
        echo "User delete attempted."
    else
        echo "userdel command not available (Termux does not support real users)."
    fi
    ;;
*)
    echo "Invalid option"
    ;;
esac

read -p "Press Enter to return..."
