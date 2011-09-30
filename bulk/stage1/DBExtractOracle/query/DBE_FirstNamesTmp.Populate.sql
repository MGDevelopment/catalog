DECLARE
    FirstName           VARCHAR(200);
    NameWork            VARCHAR(200);
    NamePart            VARCHAR(200);
    SpaceIdx            INTEGER;
    CURSOR FirstNames IS
        SELECT          TRIM(SUBSTR(Descripcion, INSTR(DESCRIPCION, ',') + 1))
            FROM        Autores
            WHERE       Descripcion NOT LIKE '[MUS] %' AND
                        INSTR(DESCRIPCION, ',') <> 0
            GROUP BY    TRIM(SUBSTR(Descripcion, INSTR(DESCRIPCION, ',') + 1));
BEGIN
    OPEN FirstNames;
    LOOP
        -- get the next value and terminate if none
        FETCH FirstNames INTO FirstName;
        EXIT WHEN FirstNames%NOTFOUND;

        -- start spliting the name
        NameWork := FirstName;
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

            -- ignore some single chars
            IF  LENGTH(NamePart) = 1 THEN
                IF  NamePart = '''' OR INSTR('{}()[]<>/\"-_:;,.&#$%=?¿!¡^`+*@', NamePart) > 0 THEN
                    NamePart := '';
                END IF;
            END IF;

            -- some extra sanitization
            NamePart := RTRIM(NamePart, ']');
            NamePart := RTRIM(NamePart, ',');
            NamePart := LTRIM(NamePart, ',');
            NamePart := RTRIM(NamePart, ':');
            NamePart := LTRIM(NamePart, '.');

            IF  NamePart = '...'   OR NamePart = '[ET'  OR NamePart = '[ET.' OR
                NamePart = 'OTROS' OR NamePart = 'OT'   OR NamePart = 'OT.'  OR
                NamePart = 'otros' OR NamePart = 'ot'   OR NamePart = 'ot.'  OR
                NamePart = 'DE'    OR NamePart = 'ED.'  OR NamePart = 'Y'    OR
                NamePart = 'de'    OR NamePart = 'ed.'  OR NamePart = 'y'    THEN
                NamePart := '';
            END IF;

            IF  NamePart IS NOT NULL THEN
                INSERT INTO DBE_FirstNamesTmp(First_Name) VALUES(UPPER(NamePart));
                COMMIT;
            END IF;
        END LOOP;
    END LOOP;
    CLOSE FirstNames;
END;