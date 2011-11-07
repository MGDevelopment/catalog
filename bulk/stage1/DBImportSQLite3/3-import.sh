#!/bin/sh

DB=$1
if [ "$DB" == "" ]; then
    DB=/tmp/eCommerce.db
fi

echo "--"
echo "--"
echo "-- database is in [$DB]"
echo "--"
echo "--use param to point to a different file"
echo "--"

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
sed -e 's/#.*$//g' -e 's/[ \\t]+$//g' -e 's/^[ \\t]+//g' -e '/^$/d' |
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
    echo ".separator \\t"                      >  $DIR_DBCMD/$TABLE.input
    echo ".import $DIR_DATA/$TABLE.txt $TABLE" >> $DIR_DBCMD/$TABLE.input

    # run the command
    sqlite3 $DB < $DIR_DBCMD/$TABLE.input > $DIR_DBCMD/$TABLE.output 2>&1

    # check for errors
    if [ `grep "Error:" $DIR_DBCMD/$TABLE.output | wc -l` -gt 0 ]; then
        echo "ERROR: table $TABLE was not imported due to some errors"
        break
    else
        rm -f $DIR_DBCMD/$TABLE.output
    fi

    # fix the NULL values
    (echo '.mode column'; echo '.headers ON'; echo "SELECT * FROM $TABLE LIMIT 1;") | sqlite3 $DB | head -1 > $DIR_DBCMD/$TABLE.columns
    awk -v tbl=$TABLE -f awk/3-null-sql.awk < $DIR_DBCMD/$TABLE.columns | sqlite3 $DB > $DIR_DBCMD/$TABLE.columns.output

    # check for errors
    if [ `grep "Error:" $DIR_DBCMD/$TABLE.columns.output | wc -l` -gt 0 ]; then
        echo "ERROR: table $TABLE column fixup was not executed due to some errors"
        break
    else
        rm -f $DIR_DBCMD/$TABLE.columns.output
    fi

done

echo "end at `date`"
