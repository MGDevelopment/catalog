create or replace
FUNCTION Autor_Name_Part(
    part CHAR,             -- N=name, L=last name, T=titles
    Name_1 VARCHAR2,
    Name_2 VARCHAR2
) RETURN VARCHAR2 IS
    TYPE Names_Array    IS VARRAY(32) OF VARCHAR2(200);
    TYPE Types_Array    IS VARRAY(32) OF CHAR;
    Name1               VARCHAR(200);
    Name2               VARCHAR(200);
    Names               Names_Array := Names_Array();   -- names go here
    Types               Types_Array := Types_Array();   -- type (N/L/T)
    NameWork            VARCHAR(200);
    NamePart            VARCHAR(200);
    NamePartCheck       VARCHAR(200);
    Sep                 VARCHAR(1);
    Mus1                BOOLEAN := false;
    Mus2                BOOLEAN := false;
    Cnt                 INTEGER;
    Commas              INTEGER;
    SpaceIdx            INTEGER;
    CURSOR FirstNames IS
        SELECT          First_Name
            FROM        DBE_FirstNames
            WHERE       First_Name = NamePart;
    CURSOR Titles IS
        SELECT          Cannonical
            FROM        DBE_Titles
            WHERE       Title = NamePart OR
                        Cannonical = NamePart;
BEGIN
    --
    -- strip the leading "[MUS] " if any
    --
    Name1 := Name_1;
    Name2 := Name_2;
    IF Name1 IS NOT NULL AND SUBSTR(Name1, 1, 6) = '[MUS] ' THEN
        Name1 := SUBSTR(Name1, 7);
        Mus1  := true;
    END IF;
    IF Name2 IS NOT NULL AND SUBSTR(Name2, 1, 6) = '[MUS] ' THEN
        Name2 := SUBSTR(Name2, 7);
        Mus2  := true;
    END IF;
    --
    -- more than one name in the same name => do nothing
    --
    IF INSTR(Name1, '/') > 0 THEN
        IF part = 'L' THEN
            RETURN (Name1);
        END IF;
        RETURN (NULL);
    END IF;

    --
    -- do it if only one comma
    --
    Commas := LENGTH(Name1) - LENGTH(REPLACE(Name1, ',', ''));
    IF Commas > 0 THEN
        Name1 := REPLACE(Name1, ',', ' ');
    END IF;

    --
    -- split name parts
    --
    NameWork := REPLACE(Name1, ',', ' ');
    Cnt := 1;
    Names.EXTEND(32);
    Types.EXTEND(32);
    LOOP
        IF TRIM(NameWork) = '' OR TRIM(NameWork) IS NULL THEN
            EXIT;
        END IF;

        -- get the first part of the name (or all if no parts)
        SpaceIdx := INSTR(NameWork, ' ');
        IF SpaceIdx > 1 THEN
            NamePart := SUBSTR(NameWork, 1, SpaceIdx - 1);
            NameWork := TRIM(SUBSTR(NameWork, SpaceIdx + 1));
        ELSE
            NamePart := TRIM(NameWork);
            NameWork := '';
        END IF;

        -- some extra sanitization
        NamePart := RTRIM(NamePart, ']');
        NamePart := RTRIM(NamePart, ',');
        NamePart := LTRIM(NamePart, ',');
        NamePart := RTRIM(NamePart, ':');
        NamePart := LTRIM(NamePart, '.');

        -- ignore some single chars
        IF  LENGTH(NamePart) = 1 THEN
            IF  NamePart = '&' THEN
                NamePart := 'AND';
            END IF;
            IF  INSTR('{}()[]<>/\''"-_:;,.&#$%=?¿!¡^`+*@', NamePart) > 0 THEN
                NamePart := '';
            END IF;
        END IF;

        IF  NamePart IS NOT NULL THEN

            Names(Cnt) := NamePart;

            --
            -- try figuring out the type
            --
            OPEN FirstNames;
            FETCH FirstNames INTO NamePartCheck;
            IF FirstNames%NOTFOUND THEN
                OPEN Titles;
                FETCH Titles INTO NamePartCheck;
                IF Titles%NOTFOUND THEN
                    Types(Cnt) := 'L';
                ELSE
                    Names(Cnt) := NamePartCheck;
                    Types(Cnt) := 'T';
                END IF;
                CLOSE Titles;
            ELSE
                Types(Cnt) := 'N';
            END IF;
            CLOSE FirstNames;
            Cnt := Cnt + 1;
            IF Cnt > 32 THEN
                EXIT;
            END IF;
        END IF;
    END LOOP;

    --
    -- build the result depending on selected part
    --
    Sep := '';
    NamePartCheck := '';
    SpaceIdx := 1;
    LOOP
        IF SpaceIdx = Cnt THEN
            EXIT;
        END IF;
        IF Types(SpaceIdx) = Part THEN
            NamePartCheck := NamePartCheck || Sep || Names(SpaceIdx);
            Sep := ' ';
        END IF;
        SpaceIdx := SpaceIdx + 1;
    END LOOP;

    RETURN(NamePartCheck);
END;