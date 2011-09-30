SELECT          P.ProductId             AS ProductId,
                '3'                     AS EntryOrder,
                S.SubjectId             AS SubjectId,
                '1'                     AS FlagMainSubject,
                NULL                    AS OriginalSubjectId
    FROM        Articulos A
    INNER JOIN  DBE_Subjects S
        ON      A.Categoria_Seccion     = S.Categoria_Seccion       AND
                A.Categoria_Grupo       = S.Categoria_Grupo         AND
                A.Categoria_Familia     = S.Categoria_Familia       AND
                A.Categoria_Subfamilia  = S.Categoria_Subfamilia
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    WHERE       A.Categoria_Grupo       <> 0 AND
                A.Categoria_Familia     <> 0 AND
                A.Categoria_Subfamilia  <> 0