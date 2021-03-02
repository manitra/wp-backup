#!/bin/bash

WP_FOLDER=$1
WP_DB=$2
DEST=$3

BASE_NAME=backup_$(date +%Y_%m_%d_%H_%M_%S)

#create backup for WP files and WP db
mkdir $BASE_NAME
tar -czf $BASE_NAME/files.tar.gz $WP_FOLDER
mysqldump $WP_DB -f | gzip > $BASE_NAME/db.tar.gz
tar -cf $BASE_NAME.tar.gz $BASE_NAME
rm -rf  $BASE_NAME

#push to destination server and keep 5 most recent files
scp $BASE_NAME.tar.gz $DEST
rm $BASE_NAME.tar.gz