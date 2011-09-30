import os
import sys
import re
import time
import types
import optparse
from decimal import Decimal
import datetime
import json
import pyodbc


def jsonMultiline(s):
    start = s.find('"""')
    while start != -1:
        end = s.find('"""', start + 3)
        if end == -1:
            break

        # split the string
        pBefore = s[0:start + 1]
        pQuery  = s[start + 3:end]
        pAfter  = s[end + 2:]

        # make single line
        pQuery = pQuery.replace('\n', '\\n')

        # rebuild the string
        s = pBefore + pQuery + pAfter

        # find next occurrence
        start = s.find('"""')
    return s


def jsonComments(s):
    lines = s.splitlines()
    comment = re.compile("^[ \t]*\/\/.*$")
    for i in range(len(lines)):
        if comment.match(lines[i]):
            lines[i] = ""
    return "\n".join(lines)

def expandMacros(q, macros):
    start = q.find('{{')
    while start != -1:
        end = q.find('}}', start + 2)
        if end == -1:
            break

        # split the string
        pBefore = q[0:start]
        pMacro  = q[start + 2:end]
        pAfter  = q[end + 2:]

        # get the macro value (or empty)
        mValue = macros.get(pMacro, "")

        # rebuild the string
        q = pBefore + mValue + pAfter

        # find next occurrence
        start = q.find('{{')
    return q


def fileRead(fname):
    s = None
    try:
        f = open(fname, "r")
        s = f.read()
        f.close()
    except:
        pass
    return s

def findType(fieldName, fieldType, fieldPrecision, fieldScale):
    if fieldType is types.StringType:
        return "string"
    if fieldType is types.UnicodeType:
        return "unicode"
    if fieldType is types.BooleanType:
        return "bool"
    if fieldType is types.IntType:
        return "int"
    if fieldType is types.LongType:
        return "long"
    if fieldType is types.FloatType:
        return "double"
    if fieldType is Decimal:
        if fieldScale == 0:
            return "decimal.int"
        return "decimal.double"
    if fieldType is datetime.date or \
       fieldType is datetime.time or \
       fieldType is datetime.datetime:
        return "datetime"
    if fieldType is types.BufferType:
        return "buffer"
    return "object"

def convString(s, fieldDef):
    return s

def convUnicode(s, fieldDef):
    return s

def convBool(s, fieldDef):
    return "true" if s == True else "false"

def convInt(s, fieldDef):
    return str(s)

def convLong(s, fieldDef):
    return str(s)

def convDouble(s, fieldDef):
    return str(s)

def convDecimalInt(s, fieldDef):
    return str(s)

def convDecimalDouble(s, fieldDef):
    return str(s)

def convDatetime(s, fieldDef):
    return s.isoformat()

def convBuffer(s, fieldDef):
    out = [ "0x" ]
    for i in range(len(s)):
        out.append("%02.2X" % ord(s[i]))
    return "".join(out)

def convObject(o, fieldDef):
    return convString(str(o))

def converterFind(detectedType):
    converters = {
        "string"            : convString,
        "unicode"           : convUnicode,
        "bool"              : convBool,
        "int"               : convInt,
        "long"              : convLong,
        "double"            : convDouble,
        "decimal.int"       : convDecimalInt,
        "decimal.double"    : convDecimalDouble,
        "datetime"          : convDatetime,
        "buffer"            : convBuffer
    }
    return converters.get(detectedType, convObject)


def queryGetModulePlugin(functionName):
    # sanity check
    if functionName == None:
        return None

    # get the module and function name
    handler = None
    (moduleName, sep, methodName) = functionName.partition(".")

    # import the module if needed
    if moduleName not in queryGetModulePlugin.modules:
        try:
            queryGetModulePlugin.modules[moduleName] = __import__(moduleName)
        except:
            pass

    # if the module was imported, get the method
    if moduleName in queryGetModulePlugin.modules:
        try:
            handler = getattr(queryGetModulePlugin.modules[moduleName], methodName)
        except:
            pass
    return handler
queryGetModulePlugin.modules = { }


def queryGetPathName(pathName, queryDef, options, stepNumber, defPath, defExt):
    # if there is no output file generate it
    if queryDef.get(pathName) == None:

        # find the file name
        fname = queryDef.get(pathName)
        if fname == None:
            # build the name
            fname = options.get(pathName + ".dir", defPath) + "/" + \
                    queryDef.get("name", str(stepNumber)) + "." + \
                    options.get(pathName + ".extension", defExt)

        # set the query
        queryDef[pathName] = fname

    return queryDef.get(pathName, None)


def queryGetOutput(queryDef, options, stepNumber):
    return queryGetPathName("output", queryDef, options, stepNumber, "./data", ".txt")


def queryGetZip(queryDef, options, stepNumber):
    return queryGetPathName("zip", queryDef, options, stepNumber, "./zip", ".txt.gz")


def queryGetQuery(queryDef, options, stepNumber):
    # check there is a query string or find it
    if queryDef.get("query") == None:
    
        # find the file name
        fname = queryDef.get("query.file")
        if fname == None:
            # build the name
            fname = options.get("query.dir", "./query") + "/" + \
                    queryDef.get("name", str(stepNumber)) + "." + \
                    options.get("query.extension", ".sql")
    
        # set the query
        queryDef["query"] = fileRead(fname)

    return queryDef.get("query", None)


def queryGetFieldHandlers(fieldDesc, queryDef):
    fields = [ ]
    fieldSpecifics = queryDef.get("fields", { })
    for i in range(len(fieldDesc)):
        # get the field
        field = fieldDesc[i]

        # if defined, use some special function to handle the field
        handler = queryGetModulePlugin(fieldSpecifics.get(field[0]))

        # if no handler (maybe the specific failed) => find a default
        if handler == None:
            # figure out the conversion
            detectedType = findType(field[0], field[1], field[4], field[5])
            handler = converterFind(detectedType)
        fields.append(handler)
    return fields


#
# EXECUTE A NO-OPERATION STEP
#
def stepTypeNoop(conn, stepNumber, queryDef, options, macros):
    # nothing to do
    return None


#
# EXECUTE A MESSAGE STEP
#
def stepTypeMessage(conn, stepNumber, queryDef, options, macros):

    # get the message and print it
    message = queryDef.get("message")
    print "%s" % message

    # if we need to stop...
    if queryDef.get("stop", False):
        return False

    # nothing to do
    return (True, None, 0)


#
# EXECUTE A LABEL STEP
#
def stepTypeLabel(conn, stepNumber, queryDef, options, macros):
    # nothing to do
    return (True, None, 0)


#
# EXECUTE AN EXECUTE STEP
#
def stepTypeExecute(conn, stepNumber, queryDef, options, macros):
    # find the query
    query = queryGetQuery(queryDef, options, stepNumber)
    if query == None:
        return (False, "Query not defined", None)
    # expand macros
    query = expandMacros(query, macros)
    # execute
    rowcount = -1
    try:
        rowcount = conn.cursor().execute(query).rowcount
    except:
        raise
        return (False, "exception", None)
    return (True, None, rowcount)


#
# EXECUTE AN EXPORT STEP
#
def stepTypeExport(conn, stepNumber, queryDef, options, macros):
    # find the query
    query = queryGetQuery(queryDef, options, stepNumber)
    if query == None:
        return (False, "Query not defined", None)
    # expand macros
    query = expandMacros(query, macros)

    # get the query and output file name
    fname = queryGetOutput(queryDef, options, stepNumber)
    if fname == None:
        return (False, "Output file not defined", None)

    # try creating the file
    recordCount = 0
    try:
        # execute the query
        cursor = conn.cursor().execute(query)

        # get the fields
        fieldDesc = cursor.description
        if queryDef.get("record.header", None):
            recordHandler = queryGetModulePlugin(queryDef.get("record.header"))
            fieldDesc = recordHandler(cursor.description, queryDef)

        # get the field conversion methods
        fields = queryGetFieldHandlers(fieldDesc, queryDef)

        # open the file and print the header
        f = open(fname, "w+")

        # print headers (if wanted)
        if queryDef.get("headers", False):
            sep = ""
            for i in range(len(cursor.description)):
                f.write(sep + cursor.description[i][0])
                sep = "\t"
            f.write("\n")

        # if there is a record handler, get it
        recordHandler = None
        if queryDef.get("record.handler", None):
            recordHandler = queryGetModulePlugin(queryDef.get("record.handler"))

        # dump each record
        row = cursor.fetchone()
        while row != None:

            # handle the record
            if recordHandler != None:
                row = recordHandler(row, queryDef)
            if row != None:

                # one more record
                recordCount += 1

                # dump the row
                sep = ""
                for i in range(len(fields)):
                    if row[i] == None:
                        s = options.get("null", '\\null')
                    else:
                        s = fields[i](row[i], cursor.description[i])
                    f.write(sep + s)
                    sep = "\t"
                f.write("\n")

            # get next
            row = cursor.fetchone()
            if row == None:
                row = cursor.fetchone()

        f.close()
    except:
        raise
        return (False, "exception", None)
    return (True, None, recordCount)


def stepTypeTableNotEmpty(conn, stepNumber, queryDef, options, macros):
    # sanity check
    table = queryDef.get("table")
    if table == None:
        return (False, "Table not defined", None)

    # build the sql command
    query = "SELECT COUNT(*) AS RecordCount FROM %s" % table

    # execute the query
    cursor = conn.cursor().execute(query)

    # fetch a record (refetch just in case)
    row = cursor.fetchone()
    if row == None:
        row = cursor.fetchone()

    # get the count
    cnt = None
    try:
        cnt = row[0]
    except:
        pass

    # check the value
    if cnt == None or cnt == 0:
        return (False, "Table Empty", 0)
    return (True, None, 0)


def stepTypeTableEmpty(conn, stepNumber, queryDef, options, macros):
    # sanity check
    table = queryDef.get("table")
    if table == None:
        return (False, "Table not defined", None)

    # build the sql command
    query = "SELECT COUNT(*) AS RecordCount FROM %s" % table

    # execute the query
    cursor = conn.cursor().execute(query)

    # fetch a record (refetch just in case)
    row = cursor.fetchone()
    if row == None:
        row = cursor.fetchone()

    # get the count
    cnt = None
    try:
        cnt = row[0]
    except:
        pass

    # check the value
    if cnt == None or cnt != 0:
        return (False, "Table Not Empty", cnt)
    return (True, None, 0)


def stepTypeProgram(conn, stepNumber, queryDef, options, macros):

    # sanity check
    if queryDef.get("program") == None:
        return (False, "Program not defined", None)

    # build the command line
    cmd = queryDef.get("program")
    if queryDef.get("params"):
        cmd += " " + expandMacros(queryDef.get("params"), macros)
    if queryDef.get("input"):
        cmd += " < " + queryDef.get("input")
    if queryDef.get("output"):
        cmd += " > " + queryDef.get("output")

    # execute
    result = os.system(cmd)

    # return error if not zero result code
    return (True, None, 0) if result == 0 else (False, "Exec Failed", result)


def stepTypeZip(conn, stepNumber, queryDef, options, macros):

    # get the txt and zip files to generate (input comes from output def)
    input  = queryGetOutput(queryDef, options, stepNumber)
    zip    = queryGetZip(queryDef, options, stepNumber)

    # check we have everything
    if input == None:
        return (False, "Input file not defined", None)
    if zip == None:
        return (False, "Output file not defined", None)

    # build the command line
    cmd = options.get("zip.program", "\\usr\\local\\wbin\\gzip.exe") + \
          " < " + input + \
          " > " + zip

    # execute
    result = os.system(cmd)

    # return error if not zero result code
    return (True, None, 0) if result == 0 else (False, "Zip Failed", result)


def stepDispatch(conn, pos, queryDef, options, macros):
    # get the step type
    stepType = queryDef.get("type", options.get("step.default", "export"))

    # get the handler
    handler = stepDispatch.steps.get(stepType, "export")

    # execute
    return handler(conn, pos, queryDef, options, macros)
stepDispatch.steps = {
    "noop"          : stepTypeNoop,
    "message"       : stepTypeMessage,
    "label"         : stepTypeLabel,
    "execute"       : stepTypeExecute,
    "export"        : stepTypeExport,
    "tblnotempty"   : stepTypeTableNotEmpty,
    "tblempty"      : stepTypeTableEmpty,
    "program"       : stepTypeProgram,
    "zip"           : stepTypeZip
}

#
# command line parsing
#
parser = optparse.OptionParser(usage="%prog [options]", version="%prog 1.0")
parser.add_option("-s", "--start",  action="store", type="int",    dest="startStep",
                  default=0, help="the start step")
parser.add_option("-e", "--end",    action="store", type="int",    dest="endStep",
                  default=-1, help="the end step")
parser.add_option("-S", "--single", action="store", type="int",    dest="singleStep",
                  default=-1, help="execute just this step")
parser.add_option("-c", "--config", action="store", type="string", dest="configFile",
                  default="process.json", help="the config file to use")
parser.add_option("-l", "--list",   action="store_true",            dest="list",
                  help="display the list of steps")
parser.add_option("-x", "--exec",   action="store_false",           dest="list",
                  default = False, help="execute the steps")
(params, args) = parser.parse_args()

#
# load the configuration file
#
config = json.loads(jsonComments(jsonMultiline(fileRead(params.configFile))), "ISO-8859-1")

#
# create the connection to db
#
dbParams = config["db"]

#
# get the config options and macros
#
options = config.get("options", { })
macros  = config.get("macros",  { })

#
# process each query
#
queries = config["queries"]
if params.startStep  < 0:
    params.startStep = 0
if params.endStep == -1 or params.endStep >= len(queries):
    params.endStep   = len(queries) - 1
if params.singleStep != -1:
    params.startStep = params.singleStep
    params.endStep   = params.singleStep

#
# execute the stated steps
#
totalTime = 0
countNOOP = 0
countOK   = 0
countERR  = 0
print ""
print "%4s | %-33s | %12s | %s" % ("STEP", "NAME", "EXEC TIME", "STATUS")
print "%4s-+-%-33s-+-%12s-+-%s" % ("-" * 4, "-" * 33, "-" * 12, "-" * 21)
for i in range(params.startStep, params.endStep + 1):

    # execute the step
    query = queries[i]

    # if only listing => display and do next
    if params.list:
        print "%4d | %-33s | %12s | %s" % (i, query["name"], "", "")
        continue

    # connect to the database
    odbc     = dbParams["odbc"]
    passwd   = dbParams["password"]
    if odbc == "" or passwd == "":
        print "ERROR: missing 'odbc' or 'password' parameter in db configuration"
        sys.exit(0)
    conn = None
    try:
        conn = pyodbc.connect(odbc + ";PWD=" + passwd)
    except:
        print "ERROR: cannot connect to DB"
        raise

    # execute (timed)
    startTime = time.clock()
    result = stepDispatch(conn, i, query, options, macros)
    endTime   = time.clock()

    # if we need to stop, do so
    if result == False:
        break

    # status reporting
    diff = round(endTime - startTime, 3)
    if result != None:
        (success, message, count) = result
        if success:
            countOK += 1
            if count > 0:
                print "%4d | %-33s | %8.3f sec | OK - %d records" % (i, query["name"], diff, count)
            else:
                print "%4d | %-33s | %8.3f sec | OK" % (i, query["name"], diff)
        else:    
            countERR += 1
            print "%4d | %-33s | %8.3f sec | ERROR - %s" % (i, query["name"], diff, message)
    else:
        countNOOP += 1
        print "%4d | %-33s | %8.3f sec | NOOP" % (i, query["name"], diff)

    # accumulate total execution time
    totalTime += endTime - startTime

    # close the connection
    conn.close()

# print total execution time
if not params.list:
    print ""
    print "Total execution time %9.3f" % (totalTime)
    print "Steps Executed OK:   %9d" % countOK
    print "Steps Executed ERR:  %9d" % countERR
    print "Steps Executed NOOP: %9d" % countNOOP
