SELECT      P.ProductId                 AS ProductId,
            CASE
                WHEN    A.Activo = 'SI' AND
                        A.Habilitado_Tematika = 'S' THEN    '04'    -- active
                ELSE                                        '08'    -- inactive
            END                         AS MarketPublishingStatus,
            NULL                        AS MarketPublishingStatusNote,
            CASE A.Novedad
                WHEN 'SI' THEN                  'true'
                ELSE                            'false'
            END                         AS FlagNovelty,
            NULL                        AS InitialPrintRun,
            NULL                        AS ReprintDetail,
            NULL                        AS CopiesSold
    FROM        Articulos A
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    ORDER BY    P.ProductId