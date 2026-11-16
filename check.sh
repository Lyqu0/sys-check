#!/bin/bash

LOG_FILE="system.log"

NAME=$(whoami)
DATE=$(date +%Y-%m-%d)
DISKUSAGE=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
FREERAM=$(free -m | awk 'NR==2 {print $4}')
UPTIME=$(uptime -p)

{
    echo "User: $NAME"
    echo "Date: $DATE"
    echo "Uptime: $UPTIME"
    echo "Disk Usage: ${DISKUSAGE}%"
    echo "Free RAM: ${FREERAM} MB"

    if [ "$DISKUSAGE" -gt 80 ]; then
        echo "Status: not ok - Disk is almost full!"
    else
        echo "Status: ok - Disk usage is normal."
    fi
} > "$LOG_FILE"

cat "$LOG_FILE"
