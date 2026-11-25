
#!/bin/bash

# Linux System Monitoring Script
# Project: Linux Server Monitoring on AWS EC2

PROJECT_DIR="$HOME/linux-cloud-project"
LOG_FILE="$PROJECT_DIR/logs/system_monitor.log"

DATE=$(date '+%Y-%m-%d %H:%M:%S')

# CPU Usage
CPU_USAGE=$(top -bn1 | awk '/Cpu\(s\)/ {
    print 100 - $8
}')

# Memory Usage
MEMORY_USAGE=$(free | awk '/Mem:/ {
    printf "%.2f", $3/$2 * 100
}')

# Disk Usage
DISK_USAGE=$(df -P / | awk 'NR==2 {
    print $5
}')

# Server Uptime
UPTIME=$(uptime -p)

# Save report
{
    echo "================================"
    echo "Linux System Monitoring Report"
    echo "Date: $DATE"
    echo "CPU Usage: ${CPU_USAGE}%"
    echo "Memory Usage: ${MEMORY_USAGE}%"
    echo "Disk Usage: ${DISK_USAGE}"
    echo "Server Uptime: $UPTIME"
    echo "================================"
    echo
} >> "$LOG_FILE"

echo "System monitoring completed!"
echo "Report saved to $LOG_FILE"
