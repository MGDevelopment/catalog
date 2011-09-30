BEGIN
    --
    -- Imprints
    --
    INSERT INTO DBE_EntitiesPreCalc(EntityType, EntityId, Name, CreationDate, HashedId)
    SELECT      'IMPR'                  AS EntityType,
                I.ImprintId             AS EntityId,
                E.Nombre                AS Name,
                E.F_Alta                AS CreationDate,
                TMK_Hashes.TMK_GetHash('IMPR:'||TO_CHAR(I.ImprintId))
                                        AS HashedId
        FROM    Editores E
        INNER JOIN DBE_Imprints I
            ON  E.Id_Editor = I.Id_Editor
        ORDER BY    I.ImprintId;
    COMMIT;
END;