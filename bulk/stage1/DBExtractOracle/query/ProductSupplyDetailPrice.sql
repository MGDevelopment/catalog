SELECT      P.ProductId             AS ProductId,
            '02'                    AS PriceType,       -- retail recomended price, tax included
            '05'                    AS PriceQualifier,  -- consumer price
            '00'                    AS PricePer,        -- price per whole product
            NULL                    AS PriceStatus,
            A.Precio_Venta_Vigente  AS PriceAmount,
            C.CurrencyCode          AS CurrencyCode
    FROM        Articulos A
    INNER JOIN  DBE_CurrencyTranslation C
        ON      A.Id_Moneda_Venta = C.Id_Moneda
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    WHERE       A.Precio_Venta_Vigente IS NOT NULL AND  -- only if there is a price
                A.Precio_Venta_Vigente <> 0
    ORDER BY    P.ProductId