#!/bin/sh

# check the user is the right user
if [ `id -un` != "postgres" ]; then
    echo "ERROR: this script must be executed by postgres user"
    exit 1
fi

echo "start at `date`"

# list the sequences and the table/field max value
psql -t -q ecommerce postgres > sequence.list.output 2>&1 <<EOT
SELECT          sequence_schema, sequence_name,
                substring(sequence_name from '([a-z0-9]+)_[a-z0-9]+_seq') AS Table,
                substring(sequence_name from '[a-z0-9]+_([a-z0-9]+)_seq') AS Field
    FROM        information_schema.sequences
    WHERE       sequence_schema = 'ecommerce';
EOT

# get the max values from every table
cat > sequence.list.awk <<'EOT'
BEGIN {
    FS="|";
    sep="";
}

$0 ~ /^ *$/ { next; }

{
    printf "%sSELECT '%s' as schemaName, '%s' AS seqName, MAX(%s) FROM %s.%s\n", sep, trim($1), trim($2), trim($4), trim($1), trim($3);
    sep="UNION\n";
}

END {
    printf ";\n";
}

function trim(s) {
    gsub("^ +", "", s);
    gsub(" +$", "", s);
    return(s);
}
EOT
awk -f sequence.list.awk < sequence.list.output > sequence.list.sql

# get the max values
psql -t -q ecommerce postgres < sequence.list.sql > sequence.values.output 2>&1

# alter the sequences to reflect the biggest used ids
cat > sequence.update.awk <<'EOT'
BEGIN {
    FS="|";
}

$0 ~ /^ *$/ { next; }

{
    printf "ALTER SEQUENCE %s.%s RESTART WITH %d;\n", trim($1), trim($2), trim($3) + 1;
}

function trim(s) {
    gsub("^ +", "", s);
    gsub(" +$", "", s);
    return(s);
}
EOT
awk -f sequence.update.awk < sequence.values.output > sequence.update.sql

# update the sequences
psql ecommerce postgres < sequence.update.sql > sequence.update.output 2>&1

# check for errors
if [ `grep 'ERROR:' sequence.update.output | wc -l` != "0" ]; then
    echo "ERROR: there were some errors while updating the sequences. Check file 'sequence.update.output'"
    exit 1
fi

rm -f sequence.list.*
rm -f sequence.update.*
rm -f sequence.values.output

echo "end at `date`"
