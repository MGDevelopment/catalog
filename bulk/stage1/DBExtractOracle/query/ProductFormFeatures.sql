SELECT          P.ProductId             AS ProductId,
                '05'                    AS FeatureType,     -- region
                CASE
                    WHEN A.AuxVarchar12 IS NOT NULL THEN
                                                A.AuxVarchar12      -- keep what we know
                    WHEN A.Id_Tipo_Articulo = '00148' THEN
                                                'A'                 -- Blu-Ray region A
                    ELSE                        '4'                 -- assume DVD region 4
                END                     AS Value,
                NULL                    AS Description
    FROM        Articulos A
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    WHERE       A.Categoria_Seccion IN (1, 3, 4, 5) AND
                ( (A.Categoria_Seccion <> 5 AND A.AuxVarchar12 IS NOT NULL) OR
                  (A.Categoria_Seccion = 5) )
    ORDER BY    P.ProductId