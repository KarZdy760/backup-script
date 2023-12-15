#!/bin/bash

#variables
$PATH_TO_BACKUPS="/home/karol/backups/backup*"

#delete backup files that are olders than 7 days
find $PATH_TO_BACKUPS -mtime +7 -delete