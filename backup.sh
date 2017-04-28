#!/bin/bash
#
# Title: automate-backup
# Author: Billy Galloway
# Date: 03/09/2017
# Purpose: Generate backups daily and overwrite the original
# scp the daily backup to a remote host.
# 
#

LOG_DATE=$(date +'%Y-%m-%d')

# Add custom output to appear in the logs
LOG_STATEMENT=": Daily UCS Backup Complete."
LOG_FORMAT="$LOG_DATE $LOG_STATEMENT"

FILE=/var/local/ucs/daily.ucs
# Information for file to be sent
REMOTE_LOCATION="root@172.16.2.4:/home/root/"

tmsh save sys ucs /var/local/ucs/daily;

if [ -f $FILE ]; then
  echo $LOG_FORMAT >> /var/log/ltm
  scp $FILE $REMOTE_LOCATION
fi

exit 0
