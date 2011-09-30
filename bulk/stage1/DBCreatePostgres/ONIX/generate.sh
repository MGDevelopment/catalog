#!/bin/sh

echo "STEP 1 - Extracting information from ONIX List HTML files"
touch data/* && rm -f data/*
for A in html/*; do
    # get the file name
    FNAME=`basename $A .htm`
    # process ONLY if it's not to be ignored
    if [ `grep "^$FNAME\$" ./ignore.txt | wc -l` -eq "0" ]; then
        echo $A
        awk -v "ListFile=data/lists.txt" -v "DataFile=data/$FNAME.txt" -f awk/onix.awk < $A
    fi
done

echo "STEP 2 - Generating SQL Insertion Script"
touch TMK_eCommerce_Create_8_ONIX_CodeTables.sql && rm -f TMK_eCommerce_Create_8_ONIX_CodeTables.sql
sort data/lists.txt | awk -f awk/generate.awk > TMK_eCommerce_Create_8_ONIX_CodeTables.sql
