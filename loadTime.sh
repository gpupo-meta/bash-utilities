#!/bin/bash
# Logs and monitoring every 1 minute the load time of a URL
# Usage: ./loadTime.sh www.google.com /var/log/loadTime.log

URL=$1
LOG_FILE=$2
echo "Press [CTRL+C] to stop.."
while :
do
        VAR=$((time -p lynx --dump $URL > /dev/null 2>&1 ; ) 2>&1 | grep real | cut -d ' ' -f 2);       
        DATE=$(date);
        printf "$DATE\t\t$URL\t\t$VAR\n" | tee -a  $LOG_FILE;
        sleep 60
done
