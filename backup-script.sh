#!/bin/bash

#variables

BACKUP_SRC="/home/karol/important_files"
BACKUP_DST="/home/karol/backups"
CURRENT_DATE=$(date +%Y-%m-%d__%H:%M:%S)
BACKUP_FILENAME="backup_$CURRENT_DATE.tar.gz"

#create new archive
tar -czf "$BACKUP_DST/$BACKUP_FILENAME" "$BACKUP_SRC" 

#check if everything proceeds correctly

if [ $? -eq 0]; then 
  echo "Backup $BACKUP_FILENAME has been created succesfully"
else
  echo "Backup creation failed"

fi

#If you want this script to run automatically at scheduled intervals, remember to add the task to the crontab