{
    for(i = 1; i <= NF; i++) {
        printf "UPDATE %s SET %s = NULL WHERE %s = '\\null';\n", tbl, $(i), $(i);
        printf "UPDATE %s SET %s = 0    WHERE %s = 'false';\n",  tbl, $(i), $(i);
        printf "UPDATE %s SET %s = 1    WHERE %s = 'true';\n",   tbl, $(i), $(i);
    };
}
