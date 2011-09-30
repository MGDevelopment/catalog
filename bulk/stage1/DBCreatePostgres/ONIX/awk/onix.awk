#
# expects parameters
#
# - ListFile = file name where the list of code tables is stored
# - DataFile = file name where the contents of the list in this file will be stored
#

BEGIN {
    listId = -1;
    listDescription = "";
    listCodeSize = -1;
    listPending = 0;
    STATUS = 0;
}

STATUS == 0 && $0 ~ /<div class=\"listHeading\"/ {
    if (match($0, /List [0-9]+:.*$/) != 0) {
        # get the {id}: {title}
        s = substr($0, RSTART, RLENGTH);
        match(s, /[0-9]+:.*$/);
        s = substr(s, RSTART, RLENGTH);
        # split the components
        split(s, fields, /: */);
        listId = fields[1];
        listDescription = fields[2];
    };
}

STATUS == 0 && $0 ~ /Code list still awaiting definition/ {
    listPending = 1;
    STATUS = -1;      # don't match anything
    next;
}

STATUS == 0 && $0 ~ /<tr valign="top"/ {
    STATUS = 1;
    next;
}

#
# expecting code
#     <td>01</td>
#
STATUS == 1 {
    s = $0;
    gsub(/^ *<td>/, "", s);
    gsub(/<\/td> *$/, "", s);
    entryCode = s;
    # get code size (if first)
    if (listCodeSize < length(entryCode)) {
        listCodeSize = length(entryCode);
    };
    STATUS = 2;
    next;
}

#
# expecting code
#     <td>Early notification</td>
#
STATUS == 2 {
    s = $0;
    gsub(/^ *<td>/, "", s);
    gsub(/<\/td> *$/, "", s);
    entryName = s;
    STATUS = 3;
    next;
}

#
# expecting code
#     <td>Use for a complete record issued earlier than approximately six months before publication.</td>
#
# or:
#
#     <td>Use for a complete record issued to confirm advance information approximately six months before
#     publication; or for a complete record issued after that date and before information has been confirmed
#     from the book-in-hand.
#     </td>
#
STATUS == 3 {
    s = $0;
    gsub(/^ *<td>/, "", s);
    if (s ~ /<\/td> *$/) {
        gsub(/<\/td> *$/, "", s);
        entryDesc = s;
        printf "%s\t%s\t%s\n", entryCode, unXML(entryName), unXML(entryDesc) >> DataFile;
        STATUS = 0;
        next;
    };
    entryDesc = s;
    STATUS = 4;
    next;
}

#
# expecting code
STATUS == 4 {
    if ($0 ~ /^ *<\/td> *$/) {
        printf "%s\t%s\t%s\n", entryCode, unXML(entryName), unXML(entryDesc) >> DataFile;
        STATUS = 0;
        next;
    };
    # trim leading and trailing spaces
    s = $0;
    gsub(/^ +/, "", s);
    gsub(/ +$/, "", s);
    # append the description
    entryDesc = entryDesc " " s;
    next;
}

END {
    if (listPending == 0) {
        if (listId == -1 || listCodeSize == -1) {
            listDescription = DataFile;
        };
        printf "%4d\t%s\t%d\t%s\n", listId, unXML(listDescription), listCodeSize, DataFile >> ListFile;
    };
}

function unXML(s) {
    gsub(/&lt;/,    "<", s);
    gsub(/&gt;/,    ">", s);
    gsub(/&amp;/,   "&", s);
    gsub(/&#335;/,  "o", s);
    gsub(/&#365;/,  "u", s);
    gsub(/&#8211;/, "-", s);
    gsub(/&#8216;/, "'", s);
    gsub(/&#8217;/, "'", s);
    gsub(/&#8220;/, "'", s);
    gsub(/&#8221;/, "'", s);
    gsub(/&#8230;/, "...", s);
    return(s);
}
