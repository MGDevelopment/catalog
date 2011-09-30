SELECT          '{{xx}}'                AS IdentifierTypeId,


                I.ISBN                  AS IDValue,     -- process
                P.ProductId             AS ProductId,
FlagPrimary

    FROM        Articulos A
    INNER JOIN  Articulos_ISBN I
        ON      A.Id_Articulo = I.Id_Articulo
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    ORDER BY    P.ProductId