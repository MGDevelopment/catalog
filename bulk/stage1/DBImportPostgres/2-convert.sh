#!/bin/sh

DIR_ZIP=./zip
DIR_DATA=./data

# check we have dos2unix
if [ ! -x /usr/bin/dos2unix ]; then
    echo "ERROR: dos2unix is not installed, please execute 'sudo apt-get install dos2unix' or equivalent"
    exit -1
fi

for A in $DIR_DATA/*.txt; do
    FNAME=`basename $A`

    echo "converting $FNAME"
    dos2unix -q < $DIR_DATA/$FNAME > $DIR_DATA/$FNAME.tmp

    rm -f $DIR_DATA/$FNAME
    mv $DIR_DATA/$FNAME.tmp $DIR_DATA/$FNAME
done
