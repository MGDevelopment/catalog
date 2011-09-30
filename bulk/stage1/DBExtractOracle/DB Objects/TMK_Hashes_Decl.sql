CREATE OR REPLACE
PACKAGE TMK_Hashes IS

    --
    -- this function calculates the MD5 hash of the input string
    --
    FUNCTION TMK_MD5(inString VARCHAR2) RETURN VARCHAR2;

    --
    -- this function takes an hexa value in string format and returns
    -- the binary number for it
    --
    FUNCTION TMK_HexaToNumber(s VARCHAR2) RETURN NUMBER;

    --
    -- this function takes a number and converts it to base60
    --
    FUNCTION TMK_Base60(num NUMBER) RETURN VARCHAR2;

    --
    -- this function takes in a string (an identifier of some kind) and returns
    -- a randomized hashed value as 11 base60 digits (64 bits of randomness)
    --
    FUNCTION TMK_GetHash(s VARCHAR2) RETURN VARCHAR2;

END TMK_Hashes;