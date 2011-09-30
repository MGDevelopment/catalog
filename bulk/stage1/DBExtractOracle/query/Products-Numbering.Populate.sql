BEGIN
    INSERT INTO DBE_Products(Id_Articulo, IdentifierValue, ProductId)
    SELECT      Id_Articulo                 AS Id_Articulo,
                'com.ilhsa.product.'||TO_CHAR(Id_Articulo)
                                            AS IdentifierValue,
                ROWNUM                      AS ProductId
        FROM articulos
        WHERE   Categoria_Seccion IN (1, 3, 4, 5)
        ORDER BY id_articulo;
    COMMIT;
END;