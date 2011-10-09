#!/bin/sh

DIR_DATA=./data
DIR_DBCMD=./dbcmd

echo "start at `date`"

# process each table

echo "NOT IMPLEMENTED"

#    # create the import commmand
#    echo '\\encoding ISO-8859-1'                                                > $DIR_DBCMD/$TABLE.input
#    echo '\\copy '"$TABLE from $DIR_DATA/$TABLE.txt "'with null as ''\\null''' >> $DIR_DBCMD/$TABLE.input
#
#    # run the command
#    psql ecommerce ecommerce < $DIR_DBCMD/$TABLE.input > $DIR_DBCMD/$TABLE.output 2>&1
#
#    # check for errors
#    if [ `grep "ERROR:" $DIR_DBCMD/$TABLE.output | wc -l` -gt 0 ]; then
#        echo "ERROR: table $TABLE was not imported due to some errors"
#        break
#    else
#        rm -f $DIR_DBCMD/$TABLE.output
#    fi

echo "end at `date`"
