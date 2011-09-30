BEGIN {
    FS="\t";
}

###URLs
###    URLId           -- synth
###    LinkBase
###    SourcePatternId
###    FlagDeleted
###    CreationDate
###    LastUpdateDate
###    DeletionDate

{
    printf "%d\t%s\t%s\t%s\t%s\t%s\t%s\n", \
            NR, $4, patternId, "false", $3, "\\null", "\\null";
}
