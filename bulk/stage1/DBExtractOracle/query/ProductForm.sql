SELECT          P.ProductId             AS ProductId,
                '00'                    AS ProductComposition,
                NVL(PF.Formato_Tapas, NVL(PF.Tipo_Articulo, PF.Categoria_Seccion))
                                        AS ProductForm,
                NULL                    AS ProductFormDetail,
                NULL                    AS ProductPackaging,
                NULL                    AS ProductFormDescription,
                NULL                    AS TradeCategory,
                CASE A.Categoria_Seccion
                    WHEN 1 THEN                         '10'        -- /libros
                    WHEN 4 THEN                         '03'        -- /cds
                    WHEN 5 THEN                         '06'        -- /dvds
                    ELSE                                NULL        -- pasatiempos
                END                     AS PrimaryContentType,
                CASE
                    WHEN P.Id_Pais = 2 THEN             'AR'
                    WHEN P.ISO31633_A2 IS NULL THEN     NULL
                    ELSE                                P.ISO31633_A2
                END                     AS CountryOfManufacture,
                NULL                    AS MapScale
    FROM        Articulos A
    LEFT JOIN   Paises P
      ON        A.AuxNumber08 = P.Id_Pais
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    INNER JOIN  DBE_ProductFormPreCalc PF
        ON      A.Id_Articulo = PF.Id_Articulo
    ORDER BY    P.ProductId