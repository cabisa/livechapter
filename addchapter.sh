#!/bin/bash

END=$(date "+%s")

if [[  $1 ]]
then
    CHAPTER=$*
else
    CHAPTER=Chapter
fi

DIRNAME=$(dirname $0)
CONFIGFILE=$DIRNAME/stopwatch.cfg
FILENAME=$(cat $CONFIGFILE)

START=$(date -r $CONFIGFILE "+%s")

DIFF=$((END-START)) 
if (( DIFF > 3599 )); then
TIMESTAMP=`echo $DIFF | awk '{printf "%d:%02d:%02d", $1/3600, ($1/60)%60, $1%60}'`
else
   TIMESTAMP=`echo $DIFF | awk '{printf "%d:%02d", ($1/60)%60, $1%60}'`
fi
echo $TIMESTAMP $CHAPTER >> $DIRNAME/$FILENAME

