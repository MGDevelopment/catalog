BEGIN {
    FS="|";
    printf "/*\n";
    printf " *\n";
    printf " * Generated from the ISO-639-2 code list. Do not edit.\n";
    printf " *\n";
    printf " * MANTENER ESTE ARCHIVO EN SINCRONIA CON\n";
    printf " *\n";
    printf " *         ../DBCreateSQLite3/TMK_eCommerce_Create_7_Languages.sql\n";
    printf " *\n";
    printf " */\n";
    printf "\n";
    printf "\n";

    printf "INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,\n";
    printf "                       FlagONIX30, FlagGrouped,\n";
    printf "                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,\n";
    printf "                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)\n";
    printf "    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '74', 'Language code - ISO 639-2/B',\n";
    printf "           true, false, 'CodeTableLanguageISO639_2_B', 'eCommerce', 'LanguageCode', 'Name',\n";
    printf "           false, CURRENT_TIMESTAMP, NULL, NULL);\n";
    printf "\n";
    printf "\n";
    printf "-- list data\n";
}

{
    codeB = $1;
    codeH = $2;
    code2 = $3;
    name  = $4;
    if (length(codeB) != 3) {
        next;
    };

    if (codeH != "") {
        dumpCode(codeH, code2, name);
        code2 = "";
    };
    dumpCode(codeB, code2, name);
}

function dumpCode(code, code2, name) {

    SQLCode2 = code2 == "" ? "NULL" : ("'" code2 "'");

    printf "INSERT INTO CodeTableLanguageISO639_2_B(LanguageCode, LanguageCode2, FlagONIXNative, Name, Description)\n";
    printf "    VALUES('%s', %s, true, '%s', NULL);\n", code, SQLCode2, escape(name);
}

function escape(s) {
    gsub("'", "''", s);
    return(s);
}
