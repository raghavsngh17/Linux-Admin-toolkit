#!/bin/bash

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"

# Colors
GREEN="\033[1;32m"
CYAN="\033[1;36m"
YELLOW="\033[1;33m"
RED="\033[1;31m"
NC="\033[0m"

# Detect Termux
if [ -d "/data/data/com.termux/files" ]; then
    PLATFORM="Termux (Android)"
else
    PLATFORM="Linux"
fi

pause() {
    read -p "Press Enter to continue..."
}

show_header() {
clear 2>/dev/null
echo -e "${CYAN}"
echo "=========================================="
echo "        Linux Admin Toolkit"
echo "   Created by Murari Singh"
echo "=========================================="
echo -e "${NC}"
echo "User     : $(whoami)"
echo "Platform : $PLATFORM"
echo "Date     : $(date)"
echo
}

cpu_info() {
show_header
echo -e "${GREEN}CPU Information${NC}"
echo

if command -v lscpu >/dev/null; then
    lscpu
else
    cat /proc/cpuinfo 2>/dev/null | head -20
fi

pause
}

network_info() {
show_header
echo -e "${GREEN}Network Information${NC}"
echo

if command -v ip >/dev/null; then
    ip a
elif command -v ifconfig >/dev/null; then
    ifconfig
else
    echo "No network tool available."
fi

pause
}

view_logs() {
show_header
echo -e "${GREEN}System Logs${NC}"
echo

if command -v journalctl >/dev/null; then
    journalctl -n 30 --no-pager
else
    echo "journalctl not available on this system."
fi

pause
}

while true
do
show_header

echo -e "${YELLOW}1.${NC} System information"
echo -e "${YELLOW}2.${NC} User management"
echo -e "${YELLOW}3.${NC} Service management"
echo -e "${YELLOW}4.${NC} Backup directory"
echo -e "${YELLOW}5.${NC} CPU information"
echo -e "${YELLOW}6.${NC} Network information"
echo -e "${YELLOW}7.${NC} View system logs"
echo -e "${YELLOW}8.${NC} Exit"
echo

read -p "Select option: " opt

case "$opt" in
1)
bash "$BASE_DIR/scripts/system_info.sh"
;;
2)
bash "$BASE_DIR/scripts/user_manage.sh"
;;
3)
bash "$BASE_DIR/scripts/service_manage.sh"
;;
4)
bash "$BASE_DIR/scripts/backup.sh"
;;
5)
cpu_info
;;
6)
network_info
;;
7)
view_logs
;;
8)
exit 0
;;
*)
echo -e "${RED}Invalid option${NC}"
sleep 1
;;
esac
done
