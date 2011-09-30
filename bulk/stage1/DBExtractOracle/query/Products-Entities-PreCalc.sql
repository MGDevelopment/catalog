BEGIN
    --
    -- Products
    --
    INSERT INTO DBE_EntitiesPreCalc(EntityType, EntityId, Name, CreationDate, HashedId)
    SELECT      'PROD'                  AS EntityType,
                P.ProductId             AS EntityId,
                A.Titulo                AS Name,
                A.F_Alta                AS CreationDate,
                TMK_Hashes.TMK_GetHash('PROD:'||TO_CHAR(P.ProductId))
                                        AS HashedId
        FROM    Articulos A
        INNER JOIN  DBE_Products P
            ON      A.Id_Articulo = P.Id_Articulo
        ORDER BY    P.ProductId;
    COMMIT;
END;