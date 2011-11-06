BEGIN {
    sequences["abc"] = 0;
    if (fname != "") {
        while ( (getline line < fname) > 0) {
            # separamos el identificador del valor
            split(line, parts, "\t");
            sequences[parts[1]] = 0 + parts[2];
        };
        close(fname);
    };
}

{
    # get the line
    line = $0;

    #
    # true|false - replace true by 1, false by 0
    #
    # replace true by 1, false by 0
    #
    gsub(/\, *true *\,/,         ", 1 ,",        line);
    gsub(/\, *true *\)/,         ", 1 )",        line);
    gsub(/\( *true *\,/,         "( 1 ,",        line);
    gsub(/\( *true *\)/,         "( 1 )",        line);
    gsub(/^ *true *\,/,          "  1 ,",        line);
    gsub(/^ *true *\)/,          "  1 )",        line);
    gsub(/^ *true + AS +/,       "  1 AS ",      line);
    gsub(/^ *true *$/,           " 1 ",          line);
    gsub(/^ *ELSE +true *$/,     " ELSE 1 ",     line);
    gsub(/\, *false *\,/,        ", 0 ,",        line);
    gsub(/\, *false *\)/,        ", 0 )",        line);
    gsub(/\( *false *\,/,        "( 0 ,",        line);
    gsub(/\( *false *\)/,        "( 0 )",        line);
    gsub(/^ *false *\,/,         "  0 ,",        line);
    gsub(/^ *false *\)/,         "  0 )",        line);
    gsub(/^ *false + AS +/,      "  0 AS ",      line);
    gsub(/^ *false *$/,          " 0 ",          line);
    gsub(/^ *ELSE +false *$/,    " ELSE 0 ",     line);

    #
    # sequences (nextval)
    #
    # replace each /nextval(\'[a-zA-Z0-9_\-]+\')/ by an integer
    # that is calculated and starts at 1 when the regexp is first
    # seen
    #
    while (match(line, /nextval\(\'[a-zA-Z0-9_\-]+\'\)/) != 0) {
        name  = substr(line, RSTART, RLENGTH);
        left  = RSTART > 1 ? substr(line, 1, RSTART - 1) : "";
        right = (RSTART + RLENGTH) < length(line) ? substr(line, RSTART + RLENGTH) : "";
        if ( ! (name in sequences) ) {
            sequences[name] = 1;
        };
        line = left sequences[name] right;
        sequences[name] = sequences[name] + 1;
    };

    printf "%s\n", line;
}
