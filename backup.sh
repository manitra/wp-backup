#!/bin/bash

WP_FOLDER=$1
WP_DB=$2
DEST=$3

DATE=$(date +%Y_%m_%d_%H_%M_%S)

#create backup for WP files and WP db
mkdir backup_$DATE
tar -czf backup_$DATE/files.tar.gz $WP_FOLDER
mysqldump $WP_DB -f | gzip > backup_$DATE/db.tar.gz
tar -cf backup_$DATE.tar backup_$DATE
rm -rf  backup_$DATE

#push to destination server and keep 5 most recent files
scp backup_$DATE.tar $DEST
rm backup_$DATE.tar