BEGIN {
    FS="\t";
    fieldCount        = count;                # total field count
    fieldGroupByCount = split(groupBy, fieldGroupBy, ",");   # list of fields to group by
    fieldSequencer    = sequencer;            # the field used for sequencing
    fieldCoallesce    = coallesceOn;          # the field to coallesce on

    # create the list of output fields
    pos = 1;
    for(i = 1; i <= fieldCount; i++) {
        if (i == fieldSequencer) {
            continue;           # does not go on output
        };
        if (i == fieldCoallesce) {
            outList[pos] = "coallesce";
        } else {
            outList[pos] = i;
        };
        pos++;
    };
    outListCount = pos - 1;

    controlData[1] = "";
    outData[1] = "";
}

NR == 1 {
    coallesceSet();
    controlSet();
    next;
}

{
    # if control data changed
    if (controlChanged()) {

        # emmit record
        emmit();

        # delete old control and data
        delete control;
        delete outData;

        # new control and data
        coallesceSet();
        controlSet();
    } else {
        coallesce();
    };
    next;
}

END {
    # emmit last pending record
    emmit();
}

function controlSet() {

    # print each field
    for(i = 1; i <= fieldGroupByCount; i++) {
        controlData[i] = $(fieldGroupBy[i]);
    };
}

function controlChanged() {

    # print each field
    for(i = 1; i <= fieldGroupByCount; i++) {
        if (controlData[i] != $(fieldGroupBy[i])) {
            return(1);
        };
    };
    return(0);
}

function emmit() {

    # print each field
    for(i = 1; i <= outListCount; i++) {
        printf "%s%s", i == 1 ? "" : "\t", outData[i];
    };
    printf "\n";
}

function coallesce() {

    # set each field
    for(i = 1; i <= outListCount; i++) {
        if (outList[i] == "coallesce") {
            outData[i] = outData[i] $(outList[i]);
        } else {
            outData[i] = $(outList[i]);
        };
    };
}

function coallesceSet() {

    # set each field
    for(i = 1; i <= outListCount; i++) {
        if (outList[i] == "coallesce") {
            outData[i] = $(fieldCoallesce);
        } else {
            outData[i] = $(outList[i]);
        };
    };
}
