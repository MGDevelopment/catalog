SELECT      'PROD'                  AS EntityType,
            P.ProductId             AS ProductId,
            A.F_Alta                AS Fecha_Alta,
            '/'||
            --
            --categoria
            --
            DECODE(CSE.Categoria_Seccion,   1, 'libros',
                                            3, 'pasatiempos',
                                            4, 'cds',
                                            5, 'dvds', NULL)||'/'||
            --
            -- grupo
            --
            TRANSLATE(LOWER(CGR.Descripcion),
                      '0123456789abcdefghijklmnopqrstuvwxyzñáéíóúü ,-._/&:{}()°ç<>$[]!¡";+=°''%ª¿?*¥º@#´`',
                      '0123456789abcdefghijklmnopqrstuvwxyznaeiouu___')||'--'||TO_CHAR(CGR.Categoria_Grupo)||'/'||
            --
            -- familia
            --
            NVL2(CFA.Categoria_Familia,
                  TRANSLATE(LOWER(CFA.Descripcion),
                      '0123456789abcdefghijklmnopqrstuvwxyzñáéíóúü ,-._/&:{}()°ç<>$[]!¡";+=°''%ª¿?*¥º@#´`',
                      '0123456789abcdefghijklmnopqrstuvwxyznaeiouu___')||'--'||TO_CHAR(CFA.Categoria_Familia)||'/',
                  '')||
            --
            -- subfamilia
            --
            NVL2(CSU.Categoria_Subfamilia,
                  TRANSLATE(LOWER(CSU.Descripcion),
                      '0123456789abcdefghijklmnopqrstuvwxyzñáéíóúü ,-._/&:{}()°ç<>$[]!¡";+=°''%ª¿?*¥º@#´`',
                      '0123456789abcdefghijklmnopqrstuvwxyznaeiouu___')||'--'||TO_CHAR(CSU.Categoria_Subfamilia)||'/',
                  '')||
            --
            -- articulo
            --
            TRANSLATE(LOWER(A.Titulo),
                                '0123456789abcdefghijklmnopqrstuvwxyzñáéíóúü ,-\._/&:{}()°ç<>$[]!¡";+=°''%ª¿?*¥º@#´`',
                                '0123456789abcdefghijklmnopqrstuvwxyznaeiouu____')||'--'||TO_CHAR(A.Id_Articulo)
                                    AS LinkBase
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