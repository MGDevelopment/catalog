BEGIN
    INSERT INTO DBE_ProductFormMeasuresPreCalc(ProductId, MeasureType, Measurement, UnitCode)
    SELECT          P.ProductId             AS ProductId,
                    '01'                    AS MeasureType,     -- height
                    A.Largo                 AS Measurement,
                    'mm'                    AS UnitCode
        FROM        Articulos A
        INNER JOIN  DBE_Products P
            ON      A.Id_Articulo = P.Id_Articulo
        WHERE       A.Largo <> 0 AND A.Largo IS NOT NULL
        ORDER BY    P.ProductId;
    COMMIT;
    INSERT INTO DBE_ProductFormMeasuresPreCalc(ProductId, MeasureType, Measurement, UnitCode)
    SELECT          P.ProductId             AS ProductId,
                    '02'                    AS MeasureType,     -- width
                    A.Ancho                 AS Measurement,
                    'mm'                    AS UnitCode
        FROM        Articulos A
        INNER JOIN  DBE_Products P
            ON      A.Id_Articulo = P.Id_Articulo
        WHERE       A.Ancho <> 0 AND A.Ancho IS NOT NULL
        ORDER BY    P.ProductId;
    COMMIT;
    INSERT INTO DBE_ProductFormMeasuresPreCalc(ProductId, MeasureType, Measurement, UnitCode)
    SELECT          P.ProductId             AS ProductId,
                    '03'                    AS MeasureType,     -- thickness
                    A.Altura                AS Measurement,
                    'mm'                    AS UnitCode
        FROM        Articulos A
        INNER JOIN  DBE_Products P
            ON      A.Id_Articulo = P.Id_Articulo
        WHERE       A.Altura <> 0 AND A.Altura IS NOT NULL
        ORDER BY    P.ProductId;
    COMMIT;
    INSERT INTO DBE_ProductFormMeasuresPreCalc(ProductId, MeasureType, Measurement, UnitCode)
    SELECT          P.ProductId             AS ProductId,
                    '08'                    AS MeasureType,     -- weoght
                    A.Peso                  AS Measurement,
                    'gr'                    AS UnitCode
        FROM        Articulos A
        INNER JOIN  DBE_Products P
            ON      A.Id_Articulo = P.Id_Articulo
        WHERE       A.Peso <> 0 AND A.Peso IS NOT NULL
        ORDER BY    P.ProductId;
    COMMIT;
END;