SELECT      P.ProductId             AS ProductId,
            '11'                    AS SupplierRole,    -- non-excl distributor to end-customers
            '{{OriginId}}'          AS OriginId,
            CASE COALESCE(D.Pedido_Especial, 'S')
                WHEN 'S' THEN                   '22'    -- to order (pedido especial)
                ELSE                            '21'    -- in stock
            END                     AS ProductAvailability,
            CASE COALESCE(D.Pedido_Especial, 'S')
                WHEN 'S' THEN               NULL
                ELSE    CASE COALESCE(D.Tipo_Unidad, 'DIAS')
                            WHEN 'HORAS' THEN       '01'    -- hours
                            ELSE                    '02'    -- days
                        END
            END                     AS FulfillmentType,
            CASE COALESCE(D.Pedido_Especial, 'S')
                WHEN 'S' THEN               NULL
                ELSE    CASE
                            WHEN COALESCE(D.Tipo_Unidad, 'DIAS') = 'HORAS' AND
                                 COALESCE(D.Cant_Unidad, 1) < 24 THEN
                                                            TO_CHAR(24)  -- no less than 24 hours
                            ELSE                            TO_CHAR(COALESCE(D.Cant_Unidad, 10))
                        END
            END                     AS FulfillmentValue,
            NULL                    AS EmbargoDate,
            CASE
                WHEN    A.Precio_Venta_Vigente IS NULL OR
                        A.Precio_Venta_Vigente = 0 THEN     'true'
                ELSE                                        'false'
            END                     AS FlagUnpriced
    FROM        Articulos A
    LEFT JOIN   Disponibilidades D
        ON      A.Id_Disponibilidad = D.Id_Disponibilidad AND
                D.Id_Esquema = 'PROD'
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    ORDER BY    P.ProductId