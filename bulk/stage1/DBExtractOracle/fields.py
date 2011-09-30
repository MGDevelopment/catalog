#!/usr/bin/python
# -*- coding: iso-8859-1 -*-

import types
import string
import datetime

def password(s, fieldDef):
    out = [ "0x" ]
    for i in range(len(s)):
        out.append("%02.2X" % ord(s[i]))
    return "".join(out)

def nullAsEmptyString(s, fieldDef):
    return "" if s == None else str(s)

def nullAsEmptyStringWithSwap(s, fieldDef):
    if s == None:
        return ""
    return swapArticulos(s, nullAsEmptyStringWithSwap.rList)
nullAsEmptyStringWithSwap.rList = [   \
    # spanish \
    (", UN ",  "UN "),  \
    (", UNA ", "UNA "), \
    (", MI ",  "MI "),  \
    (", TU ",  "TU "),  \
    (", SU ",  "SU "),  \
    (", EL ",  "EL "),  \
    (", AL ",  "AL "),  \
    (", LA ",  "LA "),  \
    (", LAS ", "LAS "), \
    (", LO ",  "LO "),  \
    (", LOS ", "LOS "), \
    # english \
    (", THE ", "THE "), \
    (", A ",   "A "),   \
    (", AN ",  "AN "),  \
    (", IN ",  "IN "),  \
    (", ON ",  "ON "),  \
    # italian \
    (", IL ",  "IL "),  \
    (", GLI ", "GLI "), \
    # french \
    (", JE ",  "JE "),  \
    (", LE ",  "LE "),  \
    (", LES ", "LES ")  \
]

def escapeControlChars(s, fieldDef):
    return s.replace("\n", "\\n").replace("\r", "\\r").replace("\t", "\\t").replace("\x1a", "")

def ProductsURL_Header(fieldDef, queryDef):

    # build the real list of output fields and return it
    fDef = [
        ("ENTITYTYPE",      types.StringType, None,    4,    4, 0, False),
        ("ENTITYID",        types.StringType, None,   16,   16, 0, False),
        ("CREATIONDATE",    datetime.date,    None,   19,   19, 0, False),
        ("LINKBASE",        types.StringType, None, 1024, 1024, 0, False)
    ]

    return fDef

#
# FIELDS ON INPUT:
#
#  0        EntityType
#  1        ProductId
#  2        Seccion_Id
#  3        Seccion_Titulo
#  4        Grupo_Id
#  5        Grupo_Titulo
#  6        Familia_Id
#  7        Familia_Titulo
#  8        Subfamilia_Id
#  9        Subfamilia_Titulo
# 10        Articulo_Id
# 11        Articulo_Titulo
# 12        Fecha_Alta
#
# FIELDS ON OUTPUT:
#
#  0        EntityType
#  1        ProductId
#  2        LinkBase
#
def ProductsURL_Record_Product(row, queryDef):

    # if no title or no id => skip record
    if row[10] == None or row[11] == None:
        return None

    # build the link
    link = "/" + row[3]

    # add Grupo (if not null)
    if row[4] != None:
        link += "/" + oldSanitize(row[5]).rstrip("_") + "--" + str(row[4])

    # add Familia (if not null)
    if row[6] != None:
        link += "/" + oldSanitize(row[7]).rstrip("_") + "--" + str(row[6])

    # add Subfamilia (if not null)
    if row[8] != None:
        link += "/" + oldSanitize(row[9]).rstrip("_") + "--" + str(row[8])

    # add Titulo (if not null)
    if row[10] != None:
        link += "/" + oldSanitize(row[11]) + "--" + str(row[10])

    # build the record and return it
    return (row[0], str(row[1]), row[12], link)

#
# FIELDS ON INPUT:
#
#  0        EntityType
#  1        ProductId
#  2        Seccion_Id
#  3        Seccion_Titulo
#  4        Grupo_Id
#  5        Grupo_Titulo
#  6        Familia_Id
#  7        Familia_Titulo
#  8        Subfamilia_Id
#  9        Subfamilia_Titulo
# 10        Fecha_Alta
#
# FIELDS ON OUTPUT:
#
#  0        EntityType
#  1        ProductId
#  2        LinkBase
#
def ProductsURL_Record_Subject(row, queryDef):

    # if no title or no id => skip record
    if row[3] == None:
        return None

    # build the link
    link = "/catalogo/" + row[3]

    # add Grupo (if not null)
    if row[4] != None:
        link += "/" + oldSanitize(row[5]).rstrip("_") + "--" + str(row[4])

    # add Familia (if not null)
    if row[6] != None:
        link += "/" + oldSanitize(row[7]).rstrip("_") + "--" + str(row[6])

    # add Subfamilia (if not null)
    if row[8] != None:
        link += "/" + oldSanitize(row[9]).rstrip("_") + "--" + str(row[8])

    # build the record and return it
    return (row[0], str(row[1]), row[10], link)


def oldSanitize(s):

    ######### FROM method corregir

    # trim, uppercase and do some replacements
    s = s.strip().upper().replace("\\.", " .",  1). \
                          replace(",",   " , ", 1). \
                          replace(";",   " ; ", 1). \
                          replace("-",   " - ", 1). \
                          replace("/",   " / ", 1). \
                          replace("  ",  " ")

    # swap articulos (ej: "inmortales, los" => "los inmortales")
    s = swapArticulos(s, oldSanitize.rList, False)

    # capitalizarOriginal, minisculizar (written with the error), mayusculizar
    # do nothing because it all later goes to lower case and diacritics are replaced

    # some replacements and trim
    s = s.replace(" \\.", ".", 1). \
          replace(" ,",   ",", 1). \
          replace(" ;",   ";", 1). \
          strip()

    ######### FROM method sinTildesNiEnie

    # remove diacritics
    s = s.translate(string.maketrans( \
        "ÑñÁÀÂÃÄÉÈÊËÍÌÎÏÓÒÔÕÖÚÙÛÜáàâãäéèêëíìîïóòôõöúùûü", \
        "NnAAAAAEEEEIIIIOOOOOUUUUaaaaaeeeeiiiiooooouuuu"))

    # lowercase
    s = s.lower()

    ######### FROM method soloLetrasYNros

    # strip non digits, non letters (upper or lower) and non ",", "-", "." or space AS "_"
    s = s.translate(string.maketrans(",-. ", "____"))
    s = "".join(i for i in s if i in \
                ("0123456789" + \
                "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + \
                "abcdefghijklmnopqrstuvwxyz" + \
                "_"))

    return s
oldSanitize.rList = [   \
    (", EL ",  "EL "),  \
    (", LA ",  "LA "),  \
    (", LO ",  "LO "),  \
    (", LOS ", "LOS "), \
    (", LAS ", "LAS "), \
    (", THE ", "THE "), \
    (", LES ", "LES ")  \
]

def swapArticulos(s, rList, fullReplacement = True):

    # append a space
    s += " "

    # iterate (if needed)
    lastSpot = 0
    while fullReplacement and (lastSpot < len(s)):

        # find the place where the swap is to happen
        spot = s.find(".", lastSpot)
        if spot < 0:
            spot = s.find("-", lastSpot)
            if spot < 0:
                if s.find(" Y ", lastSpot) >= 0:
                    spot = s.find(" Y ", lastSpot) + 1
                else:
                    spot = -1
                if spot < 0:
                    spot = len(s)

        # replace
        for r in rList:
            if s[spot - len(r[0]):spot] == r[0]:
                if lastSpot == 0:
                    # move to the begining
                    s = r[1] + s[:spot - len(r[0])] + s[spot:]
                else:
                    # move to the begining of lastSpot
                    s = s[:lastSpot - 1] + r[1] + s[lastSpot - 1:spot - len(r[0])]
                break

        # go from this spot
        lastSpot = spot + 1

    return s
