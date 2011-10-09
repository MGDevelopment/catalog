#!/bin/sh

checkErrors() {
    ERRCOUNT=`grep ':' < $1 | grep -v NOTICE | grep -v DETAIL | grep -v INFO | wc -l`
    if [ "$ERRCOUNT" -ne "0" ]; then
        echo "ERROR: some errors ocurred, check the file $1"
        exit 0
    fi
    rm -f $1
}

# create the user and database
echo "STEP 1 - Creating User and Database"
(echo "SET search_path TO public;";    cat TMK_eCommerce_Create_1_User_DB.sql) | psql postgres > create_out_1.txt 2>&1
checkErrors "create_out_1.txt"

# create the schema
echo "STEP 2 - Creating Schema"
(cat TMK_eCommerce_Create_2_Schema.sql) | psql ecommerce postgres > create_out_2.txt 2>&1
checkErrors "create_out_2.txt"

# create the objects
echo "STEP 3 - Creating Tables and related objects"
(echo "SET search_path TO ecommerce;"; echo "SET log_min_messages=ERROR;"; cat TMK_eCommerce_Create_3_Objects.sql) | psql ecommerce postgres > create_out_3.txt 2>&1
checkErrors "create_out_3.txt"

# create the sequences
echo "STEP 4 - Creating Sequences"
(echo "SET search_path TO eCommerce;"; cat TMK_eCommerce_Create_4_Sequences.sql) | psql ecommerce postgres > create_out_4.txt 2>&1
checkErrors "create_out_4.txt"

# grant permissions
#
# 1) create temporary grant commands
# 2) execute the temporary grant commands
# 3) delete temporary grant commands
#
touch create_grant.sql && rm -f create_grant.sql
psql -c "SELECT table_name FROM information_schema.tables WHERE table_schema = 'ecommerce'" -q -t ecommerce | awk 'NF == 1 { printf "GRANT SELECT, INSERT, UPDATE, DELETE, TRUNCATE ON TABLE eCommerce.%s TO eCommerce;\n", $1; }' >> create_grant.sql
psql -c "SELECT sequence_name FROM information_schema.sequences WHERE sequence_schema = 'ecommerce'" -q -t ecommerce | awk 'NF == 1 { printf "GRANT USAGE, SELECT, UPDATE ON SEQUENCE eCommerce.%s TO eCommerce;\n", $1; }' >> create_grant.sql
echo "STEP 5 - Granting Privileges"
(echo "SET search_path TO eCommerce;"; cat create_grant.sql) | psql ecommerce postgres > create_out_5.txt 2>&1
checkErrors "create_out_5.txt"
touch create_grant.sql && rm -f create_grant.sql

# load the initial data
echo "STEP 6 - Loading Initial Data"
(echo "SET search_path TO eCommerce;"; cat TMK_eCommerce_Create_6_InitialData.sql) | psql ecommerce postgres > create_out_6.txt 2>&1
checkErrors "create_out_6.txt"

# load the Language Tables
echo "STEP 7 - Loading Language Tables"
(echo "SET search_path TO eCommerce;"; cat TMK_eCommerce_Create_7_Languages.sql) | psql ecommerce postgres > create_out_7.txt 2>&1
checkErrors "create_out_7.txt"

# load the ONIX Code Tables
echo "STEP 8 - Loading ONIX Code Tables"
(echo "SET search_path TO eCommerce;"; cat TMK_eCommerce_Create_8_ONIX_CodeTables.sql) | psql ecommerce postgres > create_out_8.txt 2>&1
checkErrors "create_out_8.txt"

# complete the Code Tables
echo "STEP 9 - Loading Other Code Tables"
(echo "SET search_path TO eCommerce;"; cat TMK_eCommerce_Create_9_Other_CodeTables.sql) | psql ecommerce postgres > create_out_9.txt 2>&1
checkErrors "create_out_9.txt"

echo "DONE!"
