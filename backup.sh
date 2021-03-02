#!/bin/bash

FILES=$1
DEST=$2

DATE=$(date +%Y_%m_%d_%H_%M_%S)

BACKUP_FILE=files_$DATE.tar.gz
tar -czf $BACKUP_FILE $1




BACKUP_DB=db_$DATE.tar.gz
