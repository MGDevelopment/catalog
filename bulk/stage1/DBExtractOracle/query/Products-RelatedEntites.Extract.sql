SELECT          REPLACE(TO_CHAR(P.ProductId, '999999999'), ' ', '0')
                                                    AS ProductId,
                REPLACE(TO_CHAR(1000000000 - RCO.Cant_Comprobantes, '999999999'), ' ', '0')
                                                    AS Cantidad_Comprobantes,
                REPLACE(TO_CHAR(PR.ProductId, '999999999'), ' ', '0')
                                                    AS RelatedProductId
    FROM        Rco_Articulos_Relacionados RCO
    INNER JOIN  TmpRela T
        ON      RCO.Id_Articulo = T.Id_Articulo
    INNER JOIN  DBE_Products P
        ON      RCO.Id_Articulo = P.Id_Articulo
    INNER JOIN  TmpRelacionados TR
        ON      RCO.Id_Articulo_Relacionado = TR.Id_Articulo
    INNER JOIN DBE_Products PR
        ON      RCO.Id_Articulo = PR.Id_Articulo