BEGIN
    --
    -- Contributors
    --
    INSERT INTO DBE_EntitiesPreCalc(EntityType, EntityId, Name, CreationDate, HashedId)
    SELECT      'CONT'                  AS EntityType,
                I.ContributorId         AS EntityId,
                NVL(TRIM(C.Titles || ' ' || C.First_Name || ' ' || C.Last_Name), A.Descripcion)
                                        AS Name,
                A.F_Alta                AS CreationDate,
                TMK_Hashes.TMK_GetHash('CONT:'||TO_CHAR(I.ContributorId))
                                        AS HashedId
        FROM    Autores A
        INNER JOIN DBE_ContributorPreCalc C
            ON  A.Id_Autor = C.Id_Autor
        INNER JOIN DBE_Contributors I
            ON  A.Id_Autor = I.Id_Autor
        ORDER BY    I.ContributorId;
    COMMIT;
END;