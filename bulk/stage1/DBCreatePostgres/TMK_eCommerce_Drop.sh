#!/bin/sh

checkErrors() {
    ERRCOUNT=`grep ':' < $1 | grep -v NOTICE | grep -v DETAIL | grep -v INFO | wc -l`
    if [ "$ERRCOUNT" -ne "0" ]; then
        echo "ERROR: some errors ocurred, check the file $1"
    else
        rm -f $1
    fi
}

# drop the schema
echo "STEP 1 - Droping Schema and Objects"
echo "DROP SCHEMA eCommerce CASCADE;" | psql ecommerce postgres > destroy_out_1.txt 2>&1
checkErrors "destroy_out_1.txt"

# drop the database and user
echo "STEP 2 - Droping Database and User"
(echo "DROP DATABASE eCommerce;"; echo "DROP USER eCommerce;") | psql postgres > destroy_out_2.txt 2>&1
checkErrors "destroy_out_2.txt"

echo "DONE!"
