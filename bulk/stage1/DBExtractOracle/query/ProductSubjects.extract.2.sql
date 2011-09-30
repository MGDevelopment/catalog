SELECT          P.ProductId             AS ProductId,
                '1'                     AS EntryOrder,
                S.SubjectId             AS SubjectId,
                CASE S.Categoria_Familia
                    WHEN 0 THEN                 '1'
                    ELSE                        '0'
                END                     AS FlagMainSubject,
                NULL                    AS OriginalSubjectId
    FROM        Articulos A
    INNER JOIN  DBE_Subjects S
        ON      A.Categoria_Seccion     = S.Categoria_Seccion       AND
                A.Categoria_Grupo       = S.Categoria_Grupo         AND
                S.Categoria_Familia     = 0                         AND
                S.Categoria_Subfamilia  = 0
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    WHERE       A.Categoria_Grupo       <> 0