DECLARE
    Id_Art              NUMBER(10);
    Cnt                 INTEGER;
BEGIN
    LOOP
        SELECT COUNT(*) INTO Cnt FROM TmpRela;
        EXIT WHEN Cnt = 0;

        --
        -- process 100 articles
        --
        INSERT INTO TmpRelaTmp(Id_Articulo, Id_Articulo_Relacionado, EntryOrder)
        SELECT      Id_Articulo, Id_Articulo_Relacionado, ROWNUM AS EntryOrder
            FROM    (
                      SELECT          RCO.Id_Articulo,
                                      RCO.Id_Articulo_Relacionado
                          FROM        Rco_Articulos_Relacionados RCO
                          INNER JOIN  TmpRelacionados T
                              ON      RCO.Id_Articulo_Relacionado = T.Id_Articulo
                          WHERE       RCO.Id_Articulo IN (SELECT Id_Articulo FROM TmpRela WHERE ROWNUM < 100) AND
                                      RCO.Tipo_Relacion = 'C'
                          ORDER BY    RCO.Id_Articulo, RCO.Cant_Comprobantes DESC, T.Sin_Stock, T.F_Alta DESC
            );
        COMMIT;

        --
        -- delete those from the pending list
        --
        DELETE FROM TmpRela
            WHERE   Id_Articulo IN (SELECT DISTINCT Id_Articulo FROM TmpRelaTmp);
        COMMIT;

        --
        -- process each article
        --
        LOOP
            SELECT COUNT(*), MIN(Id_Articulo) INTO Cnt, Id_Art FROM TmpRelaTmp;
            EXIT WHEN Cnt = 0;

            INSERT INTO DBE_EntityRelatedProducts(EntityType, EntityId, EntityRelationCode, EntryOrder,
                                                  RelatedEntityType, RelatedEntityId)
            SELECT      'PROD'              AS EntityType,
                        I.ProductId         AS EntityId,
                        'YR'                AS EntityRelationCode,
                        R.EntryOrder        AS EntryOrder,
                        'PROD'              AS RelatedEntityType,
                        IR.ProductId        AS RelatedEntityId
                FROM    (
                            SELECT      Id_Articulo, Id_Articulo_Relacionado, ROWNUM AS EntryOrder
                                FROM    (
                                          SELECT          T.Id_Articulo, T.Id_Articulo_Relacionado, T.EntryOrder
                                              FROM        TmpRelaTmp T
                                              WHERE       T.Id_Articulo = Id_Art
                                              ORDER BY    T.EntryOrder
                                )
                                WHERE   ROWNUM <= 6
                        ) R
                INNER JOIN DBE_Products I
                    ON  R.Id_Articulo = I.Id_Articulo
                INNER JOIN DBE_Products IR
                    ON  R.Id_Articulo_Relacionado = IR.Id_Articulo;

            --
            -- remove this article's relations
            --
            DELETE FROM TmpRelaTmp
                WHERE   Id_Articulo = Id_Art;

            COMMIT;
        END LOOP;
    END LOOP;
END;