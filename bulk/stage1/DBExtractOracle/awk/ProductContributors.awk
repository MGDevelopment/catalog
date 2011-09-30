BEGIN {
    FS      = "\t";
    control = "";
    seq     = 0;
}

control != $1 {
    control = $1;
    seq     = 0;
}

{
    printf "%s\t%d\t%s\t%s\t%s\n", $1, seq, $3, $4, $5;
    seq++;
}