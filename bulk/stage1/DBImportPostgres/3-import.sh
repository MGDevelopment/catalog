#!/bin/sh

DIR_DATA=./data
DIR_DBCMD=./dbcmd

# sanity check
#if [ `id -un` != "ecommerce" ]; then
#    echo "ERROR: this script is to be run only by the postgres user. Please run after a 'su ecommerce'."
#    exit 1
#fi
#if [ -e "~/.pgpass" ]; then
#    echo "ERROR: please create a ~/.pgpass file (permissions 400) with a line of the form '*:*:ecommerce:ecommerce:{{password}}' for the script to run automaticaly."
#    exit 1
#fi

START_TABLE=""
if [ "$1" != "" ]; then
    START_TABLE=$1
    echo "starting with table $START_TABLE"
fi

echo "start at `date`"

# process each table
cat tables.txt |
sed -e 's/#.*$//g' -e 's/[ \t]*$//g' -e 's/^[ \t]*//g' -e '/^$/d' |
while read TABLE; do
    # if we have a start table, skip until that one
    if [ "$START_TABLE" != "" ]; then
        # if not the same, skip
        if [ "$START_TABLE" != "$TABLE" ]; then
            echo "skiping $TABLE"
            continue
        fi
        # clean so next table is processed
        START_TABLE=""
    fi

    echo "importing $TABLE"

    # create the import commmand
    echo '\\encoding ISO-8859-1'                                                > $DIR_DBCMD/$TABLE.input
    echo '\\copy '"$TABLE from $DIR_DATA/$TABLE.txt "'with null as ''\\null''' >> $DIR_DBCMD/$TABLE.input

    # run the command
    psql ecommerce ecommerce < $DIR_DBCMD/$TABLE.input > $DIR_DBCMD/$TABLE.output 2>&1

    # check for errors
    if [ `grep "ERROR:" $DIR_DBCMD/$TABLE.output | wc -l` -gt 0 ]; then
        echo "ERROR: table $TABLE was not imported due to some errors"
        break
    else
        rm -f $DIR_DBCMD/$TABLE.output
    fi

done

echo "end at `date`"
