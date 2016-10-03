#!/bin/bash
# @Date:   2016-10-03T14:03:08-03:00
# @Modified at 2016-10-03T14:03:28-03:00
# {release_id}
# Dump crontab of every user in the server
# Usage: ./crontabDump.sh  /var/log/cron

LOG_FILE=$1

for u in `cat /etc/passwd | grep -v "nologin\|bin\/false\|^#\|uucico" | cut -d: -f1`;
do
    echo "crontab for $u:" | tee -a  $LOG_FILE;
    crontab -l -u $u | tee -a  $LOG_FILE;
    echo "----" | tee -a  $LOG_FILE;
done
