SELECT      I.CollectionId          AS CollectionId,
            '20'                    AS CollectionType,
            'Yenny'                 AS SourceName,
            CASE L.Id_Coleccion
                WHEN 1140 THEN              L.Descripcion||'-bis'
                ELSE                        L.Descripcion
            END                     AS Name,
            NULL                    AS ReplaceWithThisId,
            'false'                 AS FlagInvisible,
            'false'                 AS FlagDeleted,
            L.F_Alta                AS CreationDate,
            NULL                    AS LastUpdateDate,
            NULL                    AS DeletionDate
    FROM    Colecciones L
    INNER JOIN DBE_Collections I
        ON  L.Id_Coleccion = I.Id_Coleccion
    ORDER BY    I.CollectionId