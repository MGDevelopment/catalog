CREATE OR REPLACE
PACKAGE BODY TMK_Hashes IS

    --
    -- this function calculates the MD5 hash of the input string
    --
    FUNCTION TMK_MD5(inString VARCHAR2)
    RETURN VARCHAR2 IS
    BEGIN
        RETURN DBMS_OBFUSCATION_TOOLKIT.MD5(input_string => inString);
    END;

    --
    -- this function takes an hexa value in string format and returns
    -- the binary number for it
    --
    FUNCTION TMK_HexaToNumber(s VARCHAR2)
    RETURN NUMBER IS
        i       INTEGER;
        len     INTEGER;
        val     INTEGER;
        digit   INTEGER;
    BEGIN
        len := LENGTH(s);
        i   := 1;
        val := 0;
        LOOP
            EXIT WHEN i > len;

            -- get the first digit
            digit := INSTR('0123456789ABCDEF', UPPER(SUBSTR(s, i, 1))) - 1;
            IF digit < 0 THEN
                digit := 0;
            END IF;

            val := val * 16 + digit;
            i   := i + 1;
        END LOOP;
        RETURN val;
    END;

    --
    -- this function takes a number and converts it to base60
    --
    FUNCTION TMK_Base60(num NUMBER)
    RETURN VARCHAR2 IS
        digit60     VARCHAR2(60) := '0123456789ABCDEFGHJKLMNPQRSTUVWXYZ_abcdefghijkmnopqrstuvwxyz';
        s           VARCHAR2(200) := '';
        digit       INTEGER;
        n           NUMBER;
    BEGIN
        s := '';
        n := num;
        LOOP
            EXIT WHEN n = 0;

            -- calculate the digit
            digit := MOD(n, 60);

            -- add to the string
            s := SUBSTR(digit60, digit + 1, 1) || s;

            -- remove from the number
            n := (n - digit) / 60;
        END LOOP;

        RETURN s;
    END;

    --
    -- this function takes in a string (an identifier of some kind) and returns
    -- a randomized hashed value as 11 base60 digits (64 bits of randomness)
    --
    FUNCTION TMK_GetHash(s VARCHAR2)
    RETURN VARCHAR2 IS
        MD5         VARCHAR2(64);
        N           NUMBER;
        Base60      VARCHAR2(64);
    BEGIN
        --
        -- get MD5(random + s)
        --
        SELECT RAWTOHEX(TMK_Hashes.TMK_MD5(dbms_random.string('X', 20) || s)) INTO MD5
            FROM DUAL;

        --
        -- get the number for the first 64 bits of MD5
        --
        N := TMK_Hashes.TMK_HexaToNumber(SUBSTR(MD5, 1, 16));

        --
        -- get the base60 of the number
        --
        Base60 := TMK_Hashes.TMK_Base60(N);

        RETURN Base60;
    END;

END TMK_Hashes;
