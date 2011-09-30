BEGIN
    --
    -- Publishers
    --
    INSERT INTO DBE_EntitiesPreCalc(EntityType, EntityId, Name, CreationDate, HashedId)
    SELECT      'PUBL'                  AS EntityType,
                I.PublisherId           AS EntityId,
                TRIM(REPLACE(L.Razon_Social, CHR(10)))
                                        AS Name,
                E.F_Alta                AS CreationDate,
                TMK_Hashes.TMK_GetHash('PUBL:'||TO_CHAR(I.PublisherId))
                                        AS HashedId
        FROM    Editores E
        INNER JOIN DBE_Publishers I
            ON  E.Id_Editor = I.Id_Editor
        ORDER BY    I.PublisherId;
    COMMIT;
END;