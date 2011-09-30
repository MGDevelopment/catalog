BEGIN
    --
    -- Collections
    --
    INSERT INTO DBE_EntitiesPreCalc(EntityType, EntityId, Name, CreationDate, HashedId)
    SELECT      'COLL'                  AS EntityType,
                I.CollectionId          AS EntityId,
                L.Descripcion           AS Name,
                L.F_Alta                AS CreationDate,
                TMK_Hashes.TMK_GetHash('COLL:'||TO_CHAR(I.CollectionId))
                                        AS HashedId
        FROM    Colecciones L
        INNER JOIN DBE_Collections I
            ON  L.Id_Coleccion = I.Id_Coleccion
        ORDER BY    I.CollectionId;
    COMMIT;
END;