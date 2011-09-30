SELECT          I.ProductId             AS ProductId,
                TO_CHAR(AA.Orden - 1)   AS EntryOrder,
                C.ContributorId         AS ContributorId,
                CASE AA.Role
                    WHEN 'Y2K01' THEN           'E08'
                    WHEN 'Y2K02' THEN           'E08'
                    WHEN 'Y2K03' THEN           'D03'
                    WHEN 'Y2K04' THEN           'E99'
                    WHEN 'Y2K05' THEN           'Z99'
                    ELSE                        AA.ROLE
                END                     AS ContributorRole,
                NULL                    AS OriginalContributorId
    FROM        Articulos A
    INNER JOIN  Articulos_Autores AA
        ON      A.Id_Articulo = AA.Id_Articulo
    INNER JOIN  DBE_Contributors C
        ON      AA.Id_Autor = C.Id_Autor
    INNER JOIN  DBE_Products I
        ON      A.Id_Articulo = I.Id_Articulo
    ORDER BY    I.ProductId, 4, C.ContributorId