BEGIN {
    FS="\t";
    printf "/*\n";
    printf " *\n";
    printf " * FILE GENERATED FROM THE HTML ONIX LISTS - DO NOT EDIT\n";
    printf " *\n";
    printf " * MANTENER ESTE ARCHIVO EN SINCRONIA CON\n";
    printf " *\n";
    printf " *         ../DBCreateSQLite3/TMK_eCommerce_Create_8_ONIX_CodeTables.sql\n";
    printf " *\n";
    printf " */\n";
    printf "\n";
}

{
    listId       = $1;
    gsub(/^ +/, "", listId);
    gsub(/ +$/, "", listId);
    listDesc     = $2;
    listCodeSize = $3;
    listFile     = $4;

    printf "--\n";
    printf "-- %d - %s\n", $1, $2;
    printf "--\n";
    printf "INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,\n";
    printf "                       FlagONIX30, FlagGrouped,\n";
    printf "                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,\n";
    printf "                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)\n";
    printf "    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '%s', '%s',\n", listId, escape(listDesc);
    printf "           true, true, 'CodeTablesONIX30Char%d', 'eCommerce', NULL, NULL,\n", listCodeSize;
    printf "           false, CURRENT_TIMESTAMP, NULL, NULL);\n";
    printf "\n";
    printf "-- list data\n";

    # start processing the list file
    while (getline < listFile) {
        entryCode = $1;
        entryName = $2;
        entryDesc = $3 == "" ? $2 : $3;
        printf "INSERT INTO CodeTablesONIX30Char%d(CodeTableId, CodeValue, FlagONIXNative, Name, Description)\n", listCodeSize;
        printf "SELECT  CodeTableId, '%s', true, '%s', '%s'\n", entryCode, escape(entryName), escape(entryDesc);
        printf "    FROM CodeTables\n";
        printf "    WHERE TableDomain = 'ONIX' AND TableName = '%s';\n", listId;
    };
    close(listFile);
}

END {
    printf "\n";
}

function escape(s) {
    gsub("'", "''", s);
    return(s);
}
