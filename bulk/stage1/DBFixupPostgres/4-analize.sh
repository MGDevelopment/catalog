#!/bin/sh

echo "start at `date`"

# execute a vacuum analyse
psql -t -q ecommerce ecommerce > analyze.output 2>&1 <<EOT
VACUUM ANALYZE VERBOSE
EOT

# check for errors
if [ `grep 'ERROR:' analyze.output | wc -l` != "0" ]; then
    echo "ERROR: there were some errors while Analizing db. Check file 'analize.output'"
    exit 1
fi

rm -f analyze.output

echo "end at `date`"
