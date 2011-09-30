SELECT      I.ImprintId             AS ImprintId,
            TRIM(L.Nombre)          AS Name,
            'false'                 AS FlagFixed,
            TRIM(L.Nombre)          AS ShadowName,
            NULL                    AS ReplaceWithThisId,
            'false'                 AS FlagInvisible,
            'false'                 AS FlagDeleted,
            L.F_Alta                AS CreationDate,
            NULL                    AS LastUpdateDate,
            NULL                    AS DeletionDate
    FROM    Editores L
    INNER JOIN DBE_Imprints I
        ON  L.Id_Editor = I.Id_Editor
    ORDER BY    I.ImprintId