SELECT          P.ProductId             AS ProductId,
                TMA.Nro_Tema            AS EntryOrder,
                TMA.Orden               AS EntrySequence,
                C.ContributorId         AS ContributorId,
                CASE TMA.Role
                    WHEN 'Y2K01' THEN           'E08'   -- Performed by Orchestra, band or ensemble
                    WHEN 'Y2K02' THEN           'E08'   -- Performed by Orchestra, band or ensemble
                    WHEN 'Y2K03' THEN           'D03'   -- Conductor
                    WHEN 'Y2K04' THEN           'E99'   -- Performed by
                    WHEN 'Y2K05' THEN           'Z99'   -- Other
                    ELSE                        TMA.Role
                END                     AS ContributorRole,
                NULL                    AS OriginalContributorId
    FROM        Articulos A
    INNER JOIN  Temas_Mus_Autores TMA
        ON      A.Id_Articulo = TMA.Id_Articulo
    INNER JOIN  DBE_Contributors C
        ON      TMA.Id_Autor = C.Id_Autor
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    ORDER BY    P.ProductId, TMA.Nro_Tema, 5, C.ContributorId