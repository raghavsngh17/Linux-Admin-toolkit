#!/bin/bash

echo "========================================"
echo "      LINUX ADMINISTRATION TOOL"
echo "========================================"

echo ""
echo "1. Current Logged In User"
whoami

echo ""
echo "----------------------------------------"
echo "2. Present Working Directory"
pwd

echo ""
echo "----------------------------------------"
echo "3. List Files and Directories"
ls -l

echo ""
echo "----------------------------------------"
echo "4. Create a New Directory"
mkdir admin_demo
echo "Directory 'admin_demo' created"

echo ""
echo "----------------------------------------"
echo "5. Change Directory"
cd admin_demo
pwd

echo ""
echo "----------------------------------------"
echo "6. Create Files"
touch file1.txt
touch file2.txt
echo "Files Created"

echo ""
echo "----------------------------------------"
echo "7. Display Files"
ls

echo ""
echo "----------------------------------------"
echo "8. Write Data into File"
echo "Linux Administration Practical" > file1.txt

echo ""
echo "----------------------------------------"
echo "9. Display File Content"
cat file1.txt

echo ""
echo "----------------------------------------"
echo "10. Copy File"
cp file1.txt copyfile.txt
echo "File Copied"

echo ""
echo "----------------------------------------"
echo "11. Rename File"
mv copyfile.txt renamedfile.txt
echo "File Renamed"

echo ""
echo "----------------------------------------"
echo "12. File Permissions"
chmod 777 renamedfile.txt
ls -l

echo ""
echo "----------------------------------------"
echo "13. Check Date and Time"
date

echo ""
echo "----------------------------------------"
echo "14. Check Calendar"
cal

echo ""
echo "----------------------------------------"
echo "15. Check Disk Space"
df -h

echo ""
echo "----------------------------------------"
echo "16. Check Memory Usage"
free -h

echo ""
echo "----------------------------------------"
echo "17. Running Processes"
ps -aux

echo ""
echo "----------------------------------------"
echo "18. Top Command for System Monitoring"
top

echo ""
echo "----------------------------------------"
echo "19. Create New User"
sudo useradd student
echo "User Created"

echo ""
echo "----------------------------------------"
echo "20. Set Password for User"
sudo passwd student

echo ""
echo "----------------------------------------"
echo "21. Display Current Users"
who

echo ""
echo "----------------------------------------"
echo "22. System Information"
uname -a

echo ""
echo "----------------------------------------"
echo "23. IP Address Information"
ip a

echo ""
echo "----------------------------------------"
echo "24. Remove File"
rm file2.txt
echo "File Removed"

echo ""
echo "----------------------------------------"
echo "25. Remove Directory"
cd ..
rm -r admin_demo
echo "Directory Removed"

echo ""
echo "========================================"
echo " Linux Administration Tool Completed"
echo "========================================"
