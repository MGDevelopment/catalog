BEGIN
    INSERT INTO DBE_LastNames(Last_Name)
    SELECT        DISTINCT Last_Name
        FROM      DBE_LastNamesTmp
        ORDER BY  Last_Name;
    COMMIT;
END;