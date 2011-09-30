BEGIN {
    FS       = "\t";
    control1 = "";
    control2 = "";
    seq      = 0;
}

control1 != $1 || control2 != $2 {
    control1 = $1;
    control2 = $2;
    seq      = 0;
}

{
    printf "%s\t%s\t%d\t%s\t%s\t%s\n", $1, $2, seq, $4, $5, $6;
    seq++;
}