BEGIN {
    FS="\t";
}

###EntitiesURLs
###    EntityType
###    EntityId
###    URLId           -- synth
###    InitialEntityType
###    InitialEntityId
###    FlagPrimary

{
    printf "%s\t%s\t%d\t%s\t%s\t%s\n", $1, $2, NR, $1, $2, "false";
}
