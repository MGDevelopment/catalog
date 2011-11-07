#!/bin/sh

DIR_ZIP=./zip
DIR_DATA=./data

for A in $DIR_ZIP/*.gz; do
    FNAME=`basename $A .gz`

    echo "unziping $FNAME"
    gunzip -c $DIR_ZIP/$FNAME > $DIR_DATA/$FNAME
done
