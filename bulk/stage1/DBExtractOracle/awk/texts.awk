BEGIN {
    FS="\t";
    #
    # tfile = file for texts
    # dfile = file for dates
    # afile = file for audiences
    #

    # truncate all files
    printf "" > tfile;
    printf "" > dfile;
    printf "" > afile;
}

#
# fields come in this order;
#
#   EntityType  EntityId        InRelationWithEntityType    InRelationWithEntityId
#   EntryCode   LanguageCode    EntryDate                   TextContent
#

{
    # input fields
    EntityType                  = $1;
    EntityId                    = $2;
    InRelationWithEntityType    = $3;
    InRelationWithEntityId      = $4;
    EntryCode                   = $5;
    TextLanguage                = $6;
    DateValue                   = $7;
    TextContent                 = $8;

    # sequence field
    EntryId = NR;

    # write the text file
    TextFormat      = findTextFormat(TextContent);
    FlagFixed       = "false";
    CorporateSource = "\\null";
    SourceTitle     = "\\null";
    printf "%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n",  \
            EntityType, EntityId, EntryCode, EntryId,                       \
            TextLanguage, TextFormat, TextContent,                          \
            FlagFixed,                                                      \
            TextLanguage, TextFormat, TextContent,                          \
            InRelationWithEntityType, InRelationWithEntityId,               \
            CorporateSource, SourceTitle >> tfile;

    # write the date file (only if EntryDate not null)
    if (DateValue != "" && DateValue != "\\null") {
        DateRole    = "01";
        DateFormat  = "00";
        printf "%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n",  \
                EntityType, EntityId, EntryCode, EntryId,   \
                DateRole, DateFormat, DateValue,            \
                FlagFixed, DateFormat, DateValue >> dfile;
    };

    # write the audience file
    AudienceCode = "00"
    printf "%s\t%s\t%s\t%s\t%s\n", \
            EntityType, EntityId, EntryCode, EntryId, AudienceCode >> afile;
}

function findTextFormat(s) {

    # try to match an html tag
    if (s ~ /< *[a-zA-Z]+ *([a-zA-Z0-9_-]+ *= *(\"|\')?[^\"\>]*(\"|\')? *)*\/? *>/) {
        return("02");
    };

    return("06");
}
