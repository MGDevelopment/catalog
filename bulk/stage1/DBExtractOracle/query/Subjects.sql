SELECT      I.SubjectId             AS SubjectId,
            L.Title                 AS Title,
            'false'                 AS FlagFixed,
            L.Title                 AS ShadowTitle,
            NULL                    AS ReplaceWithThisId,
            'false'                 AS FlagInvisible,
            'false'                 AS FlagDeleted,
            L.F_Alta                AS CreationDate,
            NULL                    AS LastUpdateDate,
            NULL                    AS DeletionDate
    FROM (
        SELECT      Categoria_Seccion       AS Categoria_Seccion,
                    0                       AS Categoria_Grupo,
                    0                       AS Categoria_Familia,
                    0                       AS Categoria_Subfamilia,
                    Descripcion             AS Title,
                    F_Alta                  AS F_Alta
          FROM      Categ_Secciones S
          WHERE     S.Categoria_Seccion IN (1, 3, 4, 5)
        UNION
        SELECT      Categoria_Seccion       AS Categoria_Seccion,
                    Categoria_Grupo         AS Categoria_Grupo,
                    0                       AS Categoria_Familia,
                    0                       AS Categoria_Subfamilia,
                    Descripcion             AS Title,
                    F_Alta                  AS F_Alta
          FROM      Categ_Grupos
          WHERE     Categoria_Seccion IN (1, 3, 4, 5) AND
                    Categoria_Grupo <> 0
        UNION
        SELECT      Categoria_Seccion       AS Categoria_Seccion,
                    Categoria_Grupo         AS Categoria_Grupo,
                    Categoria_Familia       AS Categoria_Familia,
                    0                       AS Categoria_Subfamilia,
                    Descripcion             AS Title,
                    F_Alta                  AS F_Alta
          FROM      Categ_Familias
          WHERE     Categoria_Seccion IN (1, 3, 4, 5) AND
                    Categoria_Grupo <> 0 AND
                    Categoria_Familia <> 0
        UNION
        SELECT      Categoria_Seccion       AS Categoria_Seccion,
                    Categoria_Grupo         AS Categoria_Grupo,
                    Categoria_Familia       AS Categoria_Familia,
                    Categoria_Subfamilia    AS Categoria_Subfamilia,
                    Descripcion             AS Title,
                    F_Alta                  AS F_Alta
          FROM      Categ_Subfamilias
          WHERE     Categoria_Seccion IN (1, 3, 4, 5) AND
                    Categoria_Grupo <> 0 AND
                    Categoria_Familia <> 0 AND
                    Categoria_Subfamilia <> 0
    ) L
    INNER JOIN DBE_Subjects I
        ON  L.Categoria_Seccion     = I.Categoria_Seccion       AND
            L.Categoria_Grupo       = I.Categoria_Grupo         AND
            L.Categoria_Familia     = I.Categoria_Familia       AND
            L.Categoria_Subfamilia  = I.Categoria_Subfamilia
    ORDER BY    I.SubjectId