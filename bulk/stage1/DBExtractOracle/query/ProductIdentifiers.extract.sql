SELECT          P.ProductId                 AS ProductId,
                COALESCE(IR.R_Tipo_Codigo, I.Tipo_Codigo)
                                            AS Tipo_Codigo,
                COALESCE(IR.R_ISBN, I.ISBN)
                                            AS ISBN,
                REPLACE(A.Cod_Ext_Visual, '-', '')
                                            AS Cod_Ext_Visual,
                CASE COALESCE(IR.R_Tipo_Codigo, I.Tipo_Codigo)
                    WHEN 'Y' THEN                   '{{ONIX-ilhsa.com}}'-- ilhsa.com (29...)
                    WHEN 'I' THEN
                                CASE LENGTH(COALESCE(IR.R_ISBN, I.ISBN))
                                    WHEN 13 THEN    '{{ONIX-ISBN-13}}'  -- ISBN-13
                                    WHEN 10 THEN    '{{ONIX-ISBN-10}}'  -- ISBN-10
                                    ELSE            '{{ONIX-ISBN-10}}'  -- ISBN-10
                                END
                    WHEN 'B' THEN
                                CASE LENGTH(COALESCE(IR.R_ISBN, I.ISBN))
                                    WHEN 12 THEN    '{{ONIX-UPC}}'      -- UPC
                                    ELSE            '{{ONIX-GTIN-13}}'  -- GTIN-13
                                END
                    WHEN 'O' THEN                   '{{ONIX-GTIN-13}}'  -- GTIN-13
                    WHEN 'S' THEN                   '{{ONIX-YS}}'       -- ISSN
                END                         AS IdentifierTypeId
    FROM        Articulos A
    INNER JOIN  Articulos_ISBN I
        ON      A.Id_Articulo = I.Id_Articulo
    INNER JOIN  DBE_Products P
        ON      I.Id_Articulo = P.Id_Articulo
    LEFT JOIN   DBE_ISBN_Replace IR
        ON      I.Id_Articulo = IR.Id_Articulo AND
                I.Tipo_Codigo = IR.Tipo_Codigo AND
                I.ISBN        = IR.ISBN
    ORDER BY    P.ProductId