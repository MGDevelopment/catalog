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

echo "start at `date`"

# execute a vacuum analyse
sqlite3 $DB > analyze.output 2>&1 <<EOT
VACUUM;
ANALYZE;
EOT

# check for errors
if [ `grep 'Error:' analyze.output | wc -l` != "0" ]; then
    echo "ERROR: there were some errors while Analizing db. Check file 'analize.output'"
    exit 1
fi

rm -f analyze.output

echo "end at `date`"
