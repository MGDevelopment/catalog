CREATE TABLE DBE_ProductFormMeasuresPreCalc(
    ProductId               INTEGER NOT NULL,
    MeasureType             VARCHAR2(2) NOT NULL,
    Measurement             INTEGER NOT NULL,
    UnitCode                VARCHAR2(2) NOT NULL,
    PRIMARY KEY(ProductId, MeasureType)
)