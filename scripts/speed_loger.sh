#!/bin/bash
# Logs internet speed to a file

LOG_FILE=~/speed_log.txt
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Requires speedtest-cli
if ! command -v speedtest-cli &> /dev/null
then
    echo "speedtest-cli not found, installing..."
    sudo apt install speedtest-cli -y
fi

SPEED=$(speedtest-cli --simple | awk 'NR==2{print $2 " " $3}')
echo "$DATE - Download Speed: $SPEED" >> $LOG_FILE
echo "Speed logged: $DATE - $SPEED"

