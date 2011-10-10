BEGIN {
    FS="\t";
    control="";
    count = 0;
}

control != $1 {
    if (control != "") {
        emmit();
    };
    control         = $1;
    cod_ext_visual  = -1;
    count           = 0;
    totals["Y"]     = 0;
    totals["I"]     = 0;
    totals["B"]     = 0;
    totals["O"]     = 0;
    totals["S"]     = 0;
    delete codes;
    delete values;
    delete types;
}

{
    if ($3 == $4 && cod_ext_visual == -1) {
        cod_ext_visual  = count;
    };
    codes[count] = $2;
    values[count] = $3;
    types[count] = $5;
    totals[$2] = totals[$2] + 1;
    count++;
}

END {
    emmit();
}

function emmit() {
    # the sorted list of codes
    sCount = 0;
    delete sCodes;
    delete sValues;
    delete sTypes;
    
    # if we have at least one ISBN
    if (totals["I"] > 0) {

        # analize ISBNs and reorder codes if necesary
        analizeISBN();

        # reduce duplicated isbns
        reduceByType("I");

        # put preferred code first
        setPreferred();

        # dump in ISBNs
        setInOrder("I");
    } else {
        # reduce duplicated isbns
        reduceByType("I");

        # put preferred code first
        setPreferred();
    };

    # dump in YBSO order (no I for ISBN)
    #
    # IMPORTANT: code "-" is used to mark "don't emmit"
    #
    reduceByType("Y");
    reduceByType("B");
    reduceByType("S");
    reduceByType("O");
    setInOrder("Y,B,S,O");

    # emmit the codes
    for(i = 0; i < sCount; i++) {
        printf "%s\t%s\t%s\t%s\n", \
                sTypes[i], sValues[i], control, i == 0 ? "true" : "false";
    };
}

function setPreferred() {

    if (cod_ext_visual != -1) {
        sCodes[sCount]  = codes[cod_ext_visual];
        sValues[sCount] = values[cod_ext_visual];
        sTypes[sCount]  = types[cod_ext_visual];
        sCount++;
    };    
}

function setInOrder(seq) {

    orderCount = split(seq, order, ",");
    for(i = 1; i <= orderCount; i++) {
        # run thru the list of codes
        for(l = 0; l < count; l++) {
            if (l == cod_ext_visual) {
                continue;
            };
            if (codes[l] == order[i]) {
                sCodes[sCount]  = codes[l];
                sValues[sCount] = values[l];
                sTypes[sCount]  = types[l];
                sCount++;
            };
        };
    };
}

function analizeISBN() {

    # if one ISBN => handle that
    if (totals["I"] == 1) {
        oneISBN();
        return;
    };

    # if two ISBN => go deeper
    if (totals["I"] == 2) {
        twoISBN();
        return;
    };

    # if more... do nothing
}

function reduceByType(typeToReduce) {

    # scan the isbn list changing type for those duplicated
    seen = "";
    for(k = 0; k < count; k++) {
        if (codes[k] != typeToReduce) {
            continue;
        };
        tmp = "[" values[k] "]";
        if (index(seen, tmp) == 0) {
            seen = seen tmp;
        } else {
            # already seen it
            codes[k] = "-";             # not copied to output
        };
    };
}

function findISBN(startAt) {

    for(ff = startAt + 1; ff < count; ff++) {
        if (codes[ff] == "I") {
            return(ff);
        };
    };
    return(-1);
}

########################################################################
########################################################################
########################################################################
#
# ISBN cases handling
#

#
# ONE ISBN
#
# - if it is ISBN-10 => generate ISBN-13, switch it with ISBN-10, append ISBN-10
#
# - if it is ISBN-13 => generate ISBN-10 and append it
#
# In BOTH cases make ISBN-13 the primary
#
function oneISBN() {

    # find the ISBN
    pos = findISBN(-1);

    # if it is an ISBN-13 => generate the ISBN-10 (if possible)
    if (length(values[pos]) == 10) {

        # get the ISBN-13
        isbn13 = getISBN13(values[pos]);

        # move the ISBN to the end
        codes[count]  = "I";
        values[count] = values[pos];
        types[count]  = types[pos];
        count++;

        # set the new ISBN-13
        values[pos] = isbn13;
        types[pos]  = isbn13Type;
    } else {
        # check if we can generate an ISBN-10
        if (values[pos] ~ /^978/) {
            # get the ISBN-10
            isbn10 = getISBN10(values[pos]);

            # append the ISBN-10 at the end
            codes[count]  = "I";
            values[count] = isbn10;
            types[count]  = isbn10Type;
            count++;
        };
    };

    # set cod_ext_visual to the ISBN-13
    cod_ext_visual = pos;
}

#
# TWO ISBN
#
# - if ISBN-10 and ISBN-10 =>
#
#       - if values are the same => problem with check digit, make the
#                                   ISBN-13, make it primary
#
#       - if values are not the same => make ISBN-13 of the first and make
#                                       it primary
#
# - if ISBN-13 and ISBN-13 =>
#
#       - if values are the same => problem with check digit, make the
#                                   rigth ISBN-13 the make it primary
#
#       - if values are not the same => make the first ISBN-13 the primary
#                                       and make ISBN-10 of it
#
# // one of each
#
# - if ISBN-10 and ISBN-13 are the same => make ISBN-13 the primary
#
# - if ISBN-10 and ISBN-13 are not the same =>
#
#       - generate ISBN-10 for the ISBN-13 and append it
#       - if no other codes => make ISBN-13 primary
#       - if other codes and a Y is primary => leave it as is
#
# The "same" is taken to mean the value part (9 digits) on both codes
# are the same. This covers cases when the check digit is bad
#
function twoISBN() {

    # find the first and second
    first  = findISBN(-1);
    second = findISBN(first);
    fISBN  = values[first];
    sISBN  = values[second];
    fType  = types[first];
    sType  = types[second];

    # both ISBN-10
    if (length(fISBN) == 10 && length(sISBN) == 10) {

        # if same value => one has a bad digit
        if (getISBN10Value(fISBN) == getISBN10Value(sISBN)) {

            # act on the one that is valid
            if (isValidISBN10(sISBN)) {
                # put the second first
                values[first]  = sISBN;
                values[second] = fISBN;
                types[first]   = sType;
                types[second]  = fType;
                fISBN = values[first];
                sISBN = values[second];
                fType = types[first];
                sType = types[second];
            };

            #
            # INVARIANT: the first is the rigth one
            #
        };

        # first is allways the valid one
        cod_ext_visual = first;

        # make ISBN-13 of the chosen one
        isbn13 = getISBN13(fISBN);

        # put second at the end
        codes[count]  = "I";
        values[count] = sISBN;
        types[count]  = sType;
        count++;

        # put first in second place
        values[second] = fISBN;
        types[second]  = fType;

        # put first ISBN-13
        values[first]  = isbn13;
        types[count]   = isbn13Type;

        return;
    };

    # both ISBN-13
    if (length(values[first]) == 13 && length(values[second]) == 13) {

        # if same value => one has a bad digit
        if (getISBN13Value(fISBN) == getISBN13Value(sISBN)) {

            # act on the one that is valid
            if (isValidISBN13(sISBN)) {
                # put the second first
                values[first]  = sISBN;
                values[second] = fISBN;
                types[first]   = sType;
                types[second]  = fType;
                fISBN = values[first];
                sISBN = values[second];
                fType = types[first];
                sType = types[second];
            };

            #
            # INVARIANT: the first is the rigth one
            #
        };

        # first is allways the valid one
        cod_ext_visual = first;

        # make ISBN-10 of the chosen one
        isbn10 = getISBN10(fISBN);

        # put the second ISBN-13 at the end
        codes[count]  = "I";
        values[count] = sISBN;
        types[count]  = sType;
        count++;

        # put ISBN-10 in second place
        values[second] = isbn10;
        types[second]  = isbn10Type;

        return;
    };

    # one ISBN-13 one ISBN-10

    # be sure ISBN-13 goes first
    if (length(fISBN) == 10) {

        values[first]  = sISBN;
        values[second] = fISBN;
        types[first]   = sType;
        types[second]  = fType;
        fISBN = values[first];
        sISBN = values[second]
        fType = types[first];
        sType = types[second]
    };

    # not the same value => generate ISBN-10 from ISBN-13
    if (getISBN13Value(fISBN) != getISBN10Value(sISBN)) {
        
        # make ISBN-10 of the chosen one
        isbn10 = getISBN10(fISBN);

        # put the second ISBN-13 at the end
        codes[count]  = "I";
        values[count] = sISBN;
        types[count]  = sType;
        count++;

        # put ISBN-10 in second place
        values[second] = isbn10;
        types[second]  = isbn10Type;

        # if only three codes (ISBN-13, new ISBN-10, ISBN-10), ISBN-13 is primary
        if (count == 3) {
            # make ISBN-13 the primary
            cod_ext_visual = first;
        } else {

            # if primary is not Y => make primary
            if (codes[cod_ext_visual] != "Y") {
                # make ISBN-13 the primary
                cod_ext_visual = first;
            };
        };

    } else {

        # make ISBN-13 the primary
        cod_ext_visual = first;
    };
}

########################################################################
########################################################################
########################################################################
#
# ISBN-10 and ISBN-13 conversion
#

function getISBN13Value(isbn13) {

    return(substr(isbn13, 4, 9));
}

function getISBN13Check(isbn12) {

    # calculate the digit
    digit = 0;
    for(i13 = 1; i13 < 13; i13++) {
        digit = digit + (i13 % 2 == 1 ? 1 : 3) * substr(isbn12, i13, 1);
    };
    digit = (10 - (digit % 10)) % 10;

    return(digit);
}

function isValidISBN13(isbn13) {

    value = getISBN13Value(isbn13);
    return(isbn13 == (value getISBN13Check(value)));
}

function getISBN13(isbn10) {

    # get the part
    value = "978" getISBN10Value(isbn10);

    return(value getISBN13Check(value));
}

function getISBN10Check(isbn9) {

    # calculate the digit
    digit = 0;
    for(i10 = 1; i10 < 10; i10++) {
        digit = digit + i10 * substr(isbn9, i10, 1);
    };
    digit = digit % 11;
    if (digit == 10) {
        digit = "X";
    };

    return(digit);
}

function getISBN10Value(isbn10) {

    return(substr(isbn10, 1, 9));
}

function isValidISBN10(isbn10) {

    value = getISBN10Value(isbn10);
    return(isbn10 == (value getISBN10Check(value)));
}

function getISBN10(isbn13) {

    # get the part
    value = getISBN13Value(isbn13);

    return(value getISBN10Check(value));
}
