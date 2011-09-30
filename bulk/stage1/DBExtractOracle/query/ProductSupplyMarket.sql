SELECT      P.ProductId                 AS ProductId,
            CASE A.Categoria_Seccion
                WHEN 3 THEN                     'AR'
                ELSE                            NULL
            END                         AS CountriesIncluded,
            CASE A.Categoria_Seccion
                WHEN 3 THEN                     NULL
                ELSE                            'WORLD'
            END                         AS RegionsIncluded,
            NULL                        AS CountriesExcluded,
            NULL                        AS RegionsExcluded,
            'false'                     AS FlagFixed,
            CASE A.Categoria_Seccion
                WHEN 3 THEN                     'AR'
                ELSE                            NULL
            END                         AS ShadowCountriesIncluded,
            CASE A.Categoria_Seccion
                WHEN 3 THEN                     NULL
                ELSE                            'WORLD'
            END                         AS ShadowRegionsIncluded,
            NULL                        AS ShadowCountriesExcluded,
            NULL                        AS ShadowRegionsExcluded,
            NULL                        AS SalesRestrictionType,
            NULL                        AS StartDateFormat,
            NULL                        AS StartDate,
            NULL                        AS EndDateFormat,
            NULL                        AS EndDate
    FROM        Articulos A
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    ORDER BY    P.ProductId