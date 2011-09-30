SELECT      I.PublisherId           AS PublisherId,
            TRIM(REPLACE(L.Razon_Social, CHR(10)))
                                    AS Name,
            'false'                 AS FlagFixed,
            TRIM(REPLACE(L.Razon_Social, CHR(10)))
                                    AS ShadowName,
            NULL                    AS ReplaceWithThisId,
            'false'                 AS FlagInvisible,
            'false'                 AS FlagDeleted,
            L.F_Alta                AS CreationDate,
            NULL                    AS LastUpdateDate,
            NULL                    AS DeletionDate
    FROM    Editores L
    INNER JOIN DBE_Publishers I
        ON  L.Id_Editor = I.Id_Editor
    ORDER BY    I.PublisherId