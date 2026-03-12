#!/bin/bash

echo "System Information"
echo "------------------"
echo "Hostname: $(hostname 2>/dev/null || echo unavailable)"
echo

echo "Uptime:"
uptime 2>/dev/null || echo "uptime not available"
echo

echo "Memory usage:"
if command -v free >/dev/null; then
    free -h
else
    echo "free command not available"
fi

echo
echo "Disk usage:"
df -h 2>/dev/null

read -p "Press Enter to return..."
