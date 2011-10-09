SELECT          '{{StoreId}}'           AS StoreId,
                'ARS'                   AS FromCurrencyCode,
                CASE C.Id_Moneda
                    WHEN '2' THEN               'USD'
                    WHEN '3' THEN               'EUR'
                END                     AS ToCurrencyCode,
                C.Fecha_Vigencia        AS FromDate,
                NULL                    AS ToDate,
                C.Compra                AS BuyRate,
                COALESCE(NULLIF(C.Venta, 0), C.Compra)
                                        AS SellRate
    FROM COTIZACIONES C
    WHERE       C.Id_Moneda IN (2, 3) 
    ORDER BY    C.Id_Moneda, C.Fecha_Vigencia DESC