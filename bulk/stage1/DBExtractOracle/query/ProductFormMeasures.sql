SELECT          ProductId           AS ProductId,
                MeasureType         AS MeasureType,
                Measurement         AS Measurement,
                UnitCode            AS UnitCode
    FROM        DBE_ProductFormMeasuresPreCalc
    ORDER BY    ProductId, MeasureType