SELECT          P.ProductId             AS ProductId,
                NULL                    AS CityOfPublication,
                P.ISO31633_A2           AS CountryOfPublication
    FROM        Articulos A
    INNER JOIN  Editores E
        ON      A.Id_Editor = E.Id_Editor
    INNER JOIN  Paises P
        ON      E.Id_Pais = P.Id_Pais
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    ORDER BY    P.ProductId