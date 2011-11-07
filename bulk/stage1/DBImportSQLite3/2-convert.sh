#!/bin/sh

DIR_ZIP=./zip
DIR_DATA=./data

# check we have dos2unix
if [ ! -x /opt/local/bin/dos2unix ]; then
    echo "ERROR: dos2unix is not installed, please execute 'sudo apt-get install dos2unix' or equivalent"
    exit -1
fi

for A in $DIR_DATA/*.txt; do
    FNAME=`basename $A`

    echo "converting $FNAME"
    #####iconv -f CP1252 -t UTF-8 < $DIR_DATA/$FNAME | dos2unix -q > $DIR_DATA/$FNAME.tmp
    iconv -f ISO-8859-1 -t UTF-8 < $DIR_DATA/$FNAME | dos2unix -q > $DIR_DATA/$FNAME.tmp

    rm -f $DIR_DATA/$FNAME
    mv $DIR_DATA/$FNAME.tmp $DIR_DATA/$FNAME
done
