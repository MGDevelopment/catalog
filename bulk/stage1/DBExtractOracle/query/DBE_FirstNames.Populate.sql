BEGIN
    --
    -- insert the names
    --
    INSERT INTO DBE_FirstNames(First_Name)
    SELECT        DISTINCT First_Name
        FROM      DBE_FirstNamesTmp
        ORDER BY  First_Name;
    COMMIT;
    --
    -- delete the honorary titles
    --
    DELETE FROM DBE_FirstNames
        WHERE       First_Name IN (SELECT Title FROM DBE_Titles);
    COMMIT;
    --
    -- delete the cannonical honorary titles
    --
    DELETE FROM DBE_FirstNames
        WHERE       First_Name IN (SELECT Cannonical FROM DBE_Titles);
    COMMIT;
    --
    -- delete standard articles (la, le, los, the)
    --
    DELETE FROM DBE_FirstNames
        WHERE       First_Name IN ('LA', 'LAS', 'LO', 'LOS', 'LE', 'LES', 'THE');
    COMMIT;
    --
    -- delete last names
    --
    DELETE FROM DBE_FirstNames
        WHERE       First_Name IN (SELECT Last_Name FROM DBE_LastNames);
    COMMIT;
END;