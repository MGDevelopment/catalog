SELECT      P.ProductId             AS ProductId,
            AA.Auditorio            AS AudienceCode
    FROM        Articulos A
    INNER JOIN  Articulos_Auditorio AA
        ON      A.Id_Articulo = AA.Id_Articulo
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    ORDER BY    P.ProductId