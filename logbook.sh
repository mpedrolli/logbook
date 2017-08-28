#!/bin/bash

LOGBOOK_DIR="$HOME/LOGBOOK"
LOGBOOK_EDITOR="/usr/bin/vim"
LOGBOOK_FILE_EXTENSION="txt"

if [ ! -d $LOGBOOK_DIR ] ; then
	mkdir -p $LOGBOOK_DIR
fi

if [[ -z "$1" ]]; then
	LOGBOOK_DATE=$(date +"%Y%m%d")
else
	LOGBOOK_DATE=$1
fi

IFS= read -r -p "Enter the topic of this journal: " LOGBOOK_TOPIC

LOGBOOK_FILE_NAME=$LOGBOOK_DATE-${LOGBOOK_TOPIC// /-}.$LOGBOOK_FILE_EXTENSION

echo "===============================" > $LOGBOOK_DIR/$LOGBOOK_FILE_NAME
echo "$LOGBOOK_DATE - "$LOGBOOK_TOPIC"" >> $LOGBOOK_DIR/$LOGBOOK_FILE_NAME
echo "===============================" >> $LOGBOOK_DIR/$LOGBOOK_FILE_NAME

$LOGBOOK_EDITOR $LOGBOOK_DIR/$LOGBOOK_FILE_NAME


