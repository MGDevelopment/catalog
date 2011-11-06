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

checkErrors() {
    ERRCOUNT=`grep ':' < $1 | grep -v NOTICE | grep -v DETAIL | grep -v INFO | wc -l`
    if [ "$ERRCOUNT" -ne "0" ]; then
        echo "ERROR: some errors ocurred, check the file $1"
        exit 0
    fi
    rm -f $1
}

# create the user and database
echo "STEP 1 - Creating Database"
echo "select 1;" | sqlite3 $DB > create_out_1.txt 2>&1
checkErrors "create_out_1.txt"

# create the schema
echo "STEP 2 - Creating Schema - N/A"

# create the objects
echo "STEP 3 - Creating Tables and related objects"
awk -f awk/3_sql_dumb_down.awk < TMK_eCommerce_Create_3_Objects.sql > tmp_TMK_eCommerce_Create_3_Objects.sql
sqlite3 $DB < tmp_TMK_eCommerce_Create_3_Objects.sql > create_out_3.txt 2>&1
checkErrors "create_out_3.txt"
rm -f tmp_TMK_eCommerce_Create_3_Objects.sql

# create the sequences
echo "STEP 4 - Creating Sequences - N/A"

# grant permissions
echo "STEP 5 - Granting Privileges - N/A"

# load the initial data
echo "STEP 6 - Loading Initial Data"
awk -f awk/sql_transform.awk < TMK_eCommerce_Create_6_InitialData.sql > tmp_TMK_eCommerce_Create_6_InitialData.sql
sqlite3 $DB < tmp_TMK_eCommerce_Create_6_InitialData.sql > create_out_6.txt 2>&1
checkErrors "create_out_6.txt"
rm tmp_TMK_eCommerce_Create_6_InitialData.sql

# load the Language Tables
echo "STEP 7 - Loading Language Tables"
awk -f awk/sql_transform.awk -v fname=sequencer_7.txt < TMK_eCommerce_Create_7_Languages.sql > tmp_TMK_eCommerce_Create_7_Languages.sql
sqlite3 $DB < tmp_TMK_eCommerce_Create_7_Languages.sql > create_out_7.txt 2>&1
checkErrors "create_out_7.txt"
rm tmp_TMK_eCommerce_Create_7_Languages.sql

# load the ONIX Code Tables
echo "STEP 8 - Loading ONIX Code Tables"
awk -f awk/sql_transform.awk -v fname=sequencer_8.txt < TMK_eCommerce_Create_8_ONIX_CodeTables.sql > tmp_TMK_eCommerce_Create_8_ONIX_CodeTables.sql
sqlite3 $DB < tmp_TMK_eCommerce_Create_8_ONIX_CodeTables.sql > create_out_8.txt 2>&1
checkErrors "create_out_8.txt"
rm tmp_TMK_eCommerce_Create_8_ONIX_CodeTables.sql

# complete the Code Tables
echo "STEP 9 - Loading Other Code Tables"
awk -f awk/sql_transform.awk -v fname=sequencer_9.txt < TMK_eCommerce_Create_9_Other_CodeTables.sql > tmp_TMK_eCommerce_Create_9_Other_CodeTables.sql
sqlite3 $DB < tmp_TMK_eCommerce_Create_9_Other_CodeTables.sql > create_out_9.txt 2>&1
checkErrors "create_out_9.txt"
rm tmp_TMK_eCommerce_Create_9_Other_CodeTables.sql

# load IdentifierTypes (only for SQLite3)
echo "STEP 10 - Loading IdentifierTypes - N/A"
awk 'BEGIN { FS="|"; } { printf "%s|%s|%s|%s|%s|%s|%s|%s|%s|%s\n", NR, $2, $3, $4, $5, $6, $7, $8, $9, $10; }' < TMK_eCommerce_Create_10_Renumber.txt > TMK_eCommerce_Create_10_Renumber.data
echo ".import TMK_eCommerce_Create_10_Renumber.data IdentifierTypes" | sqlite3 $DB > create_out_10.txt 2>&1
checkErrors "create_out_10.txt"
rm TMK_eCommerce_Create_10_Renumber.txt
rm TMK_eCommerce_Create_10_Renumber.data

echo "DONE!"
