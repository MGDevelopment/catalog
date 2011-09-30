BEGIN {
    FS      = "\t";
    control = "";
    status  = "none";

    # print the header
    #
    # NO HEADERS
    #
###    printf "%s\t%s\t%s\t%s\t%s\t%s\t%s\n",                                      \
###           "EntityType", "EntityId", "EntityRelationCode", "EntryOrder",        \
###           "RelatedEntityType", "RelatedEntityId", "OriginalRelatedEntityId";
}

control != $1 {
    # set the control and emmit the first entry
    control = $1;
    pos     = 0;

    # trim the zeroes
    ProductId = ztrim($1);
    RelatedProductId = ztrim($3);

    # print the line and count one entry
    printf "%s\t%s\t%s\t%d\t%s\t%s\t%s\n",  \
           "PROD", ProductId, "YR", pos, "PROD", RelatedProductId, "\\null";
    pos++;

    # status is to dump
    status = "dump";

    next;
}

status == "dump" {
    # trim the zeroes
    RelatedProductId = ztrim($3);

    # print the line and count one entry
    printf "%s\t%s\t%s\t%d\t%s\t%s\t%s\n",  \
           "PROD", ProductId, "YR", pos, "PROD", RelatedProductId, "\\null";
    pos++;

    # if reached count, skip status
    if (pos == count) {
        status = "skip";
    };
    next;
}

status == "skip" {
    next;
}

function ztrim(s) {
    sub(/^0+/, "", s);
    return(s == "" ? "0" : s);
}