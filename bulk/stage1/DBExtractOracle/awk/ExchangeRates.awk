BEGIN {
    FS="\t";
    control = "";
}

$3 != control {
    lastDate = "10000-01-01T00:00:00";
    control = $3;
}

{
    printf "%s\t%s\t%s\t%s\t%s\t%s\t%s\n", $1, $2, $3, $4, lastDate, $6, $7;
    lastDate = $4;
}