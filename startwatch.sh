#!/bin/bash

if [[  $1 ]]
then
    INTRO=$*
else
    INTRO=Intro
fi

DIRNAME=$(dirname $0)
CONFIGFILE=$DIRNAME/stopwatch.cfg
FILENAME=$(date "+stopwatch-%Y-%m-%d_%H%M%S.log")
echo $FILENAME > $CONFIGFILE

echo 0:00 $INTRO > $DIRNAME/$FILENAME

