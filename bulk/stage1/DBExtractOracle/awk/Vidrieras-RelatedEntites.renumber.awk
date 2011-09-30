BEGIN {
    FS      = "\t";
    control = "";

    # print the header
    #
    # NO HEADERS
    #
###    printf "%s\t%s\t%s\t%s\t%s\t%s\t%s\n",                                      \
###           "EntityType", "EntityId", "EntityRelationCode", "EntryOrder",        \
###           "RelatedEntityType", "RelatedEntityId", "OriginalRelatedEntityId";
}

control != $2 {
    pos = 0;
    control = $2;
}

{

    # print the line and count one entry
    printf "%s\t%s\t%s\t%d\t%s\t%s\t%s\n",  \
           $1, $2, $3, pos, $5, $6, $7;
    pos++;

    next;
}
