#!/bin/bash

LOGBOOK_DIR="$HOME/LOGBOOK"
LOGBOOK_EDITOR="/usr/bin/vim"
LOGBOOK_FILE_EXTENSION="txt"

if [ ! -d $LOGBOOK_DIR ] ; then
	mkdir -p $LOGBOOK_DIR
fi

if [[ -z "$1" ]]; then
	DATE=$(date +"%Y%m%d")
else
	DATE=$1
fi

echo -n "Please enter the topic of this journal: "
read TOPIC

LOGBOOK_FILE_NAME=$DATE-$TOPIC.$LOGBOOK_FILE_EXTENSION


echo "==============================" > $LOGBOOK_DIR/$LOGBOOK_FILE_NAME
echo "$DATE - $TOPIC" >> $LOGBOOK_DIR/$LOGBOOK_FILE_NAME
echo "==============================" >> $LOGBOOK_DIR/$LOGBOOK_FILE_NAME

$LOGBOOK_EDITOR $LOGBOOK_DIR/$LOGBOOK_FILE_NAME


