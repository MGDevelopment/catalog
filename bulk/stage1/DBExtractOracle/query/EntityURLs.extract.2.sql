SELECT      'PROD'                      AS EntityType,
            P.ProductId                 AS EntityId,
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
            A.Id_Articulo               AS Articulo_Id,
            A.Titulo                    AS Articulo_Titulo,
            A.F_Alta                    AS Fecha_Alta
    FROM        Articulos A
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo           = P.Id_Articulo
    INNER JOIN  Categ_Secciones cse
        ON      A.Categoria_Seccion     = CSE.Categoria_Seccion
    INNER JOIN  Categ_Grupos CGR
        ON      A.Categoria_Seccion     = CGR.Categoria_Seccion     AND
                A.Categoria_Grupo       = CGR.Categoria_Grupo
    LEFT JOIN   Categ_Familias CFA
        ON      A.Categoria_Seccion     = CFA.Categoria_Seccion     AND
                A.Categoria_Grupo       = CFA.Categoria_Grupo       AND
                A.Categoria_Familia     = CFA.Categoria_Familia     AND
                A.Categoria_Familia     <> 0
    LEFT JOIN   Categ_Subfamilias CSU
        ON      A.Categoria_Seccion     = CSU.Categoria_Seccion     AND
                A.Categoria_Grupo       = CSU.Categoria_Grupo       AND
                A.Categoria_Familia     = CSU.Categoria_Familia     AND
                A.Categoria_Subfamilia  = CSU.Categoria_Subfamilia  AND
                A.Categoria_Subfamilia  <> 0
    WHERE       A.Categoria_Seccion     IN (1, 3, 4, 5)
    ORDER BY    P.ProductId