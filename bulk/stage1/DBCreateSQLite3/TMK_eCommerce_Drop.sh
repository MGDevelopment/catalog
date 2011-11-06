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

# drop the schema
echo "STEP 1 - Droping Schema and Objects - N/A"

# drop the database and user
echo "STEP 2 - Droping Database and User"
rm -f $DB > /dev/null 2> /dev/null

echo "DONE!"
