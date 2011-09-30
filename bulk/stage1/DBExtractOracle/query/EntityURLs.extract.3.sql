SELECT      'SUBJ'                      AS EntityType,
            S.SubjectId                 AS ProductId,
            CSE.Categoria_Seccion       AS Seccion_Id,
            DECODE(CSE.Categoria_Seccion,   1, 'libros',
                                            3, 'pasatiempos',
                                            4, 'cds',
                                            5, 'dvds', NULL)
                                        AS Seccion_Titulo,
            CGR.Categoria_Grupo         AS Grupo_Id,
            CGR.Descripcion             AS Grupo_Titulo,
            CFA.Categoria_Familia       AS Familia_Id,
            CFA.Descripcion             AS Familia_Titulo,
            CSU.Categoria_Subfamilia    AS Subfamilia_Id,
            CSU.Descripcion             AS Subfamilia_Titulo,
            COALESCE(CSE.F_Alta, CGR.F_Alta, CFA.F_Alta, CSU.F_Alta, CURRENT_DATE)
                                        AS Fecha_Alta
    FROM DBE_Subjects S
    INNER JOIN  Categ_Secciones cse
        ON      S.Categoria_Seccion     = CSE.Categoria_Seccion
    LEFT JOIN  Categ_Grupos CGR
        ON      S.Categoria_Seccion     = CGR.Categoria_Seccion     AND
                S.Categoria_Grupo       = CGR.Categoria_Grupo       AND
                S.Categoria_Grupo       <> 0
    LEFT JOIN   Categ_Familias CFA
        ON      S.Categoria_Seccion     = CFA.Categoria_Seccion     AND
                S.Categoria_Grupo       = CFA.Categoria_Grupo       AND
                S.Categoria_Familia     = CFA.Categoria_Familia     AND
                S.Categoria_Familia     <> 0
    LEFT JOIN   Categ_Subfamilias CSU
        ON      S.Categoria_Seccion     = CSU.Categoria_Seccion     AND
                S.Categoria_Grupo       = CSU.Categoria_Grupo       AND
                S.Categoria_Familia     = CSU.Categoria_Familia     AND
                S.Categoria_Subfamilia  = CSU.Categoria_Subfamilia  AND
                S.Categoria_Subfamilia  <> 0
    ORDER BY    S.SubjectId