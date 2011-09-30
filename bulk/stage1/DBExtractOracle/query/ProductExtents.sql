SELECT      P.ProductId             AS ProductId,
            CASE A.Categoria_Seccion
                WHEN 1 THEN                     '00'    -- page count
                ELSE                            '09'    -- duration
            END                     AS ExtentType,
            A.Paginas               AS ExtentValue,
            NULL                    AS ExtentValueRoman,
            CASE A.Categoria_Seccion
                WHEN 1 THEN                     '03'    -- pages
                ELSE                            '05'    -- minutes
            END                     AS ExtentUnit
    FROM        Articulos A
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    WHERE       A.Paginas IS NOT NULL
    ORDER BY    P.ProductId