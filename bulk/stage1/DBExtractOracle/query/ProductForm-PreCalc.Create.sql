CREATE TABLE DBE_ProductFormPreCalc(
    Id_Articulo                 INTEGER NOT NULL,
    Formato_Tapas               VARCHAR2(2) NULL,
    Tipo_Articulo               VARCHAR2(2) NULL,
    Categoria_Seccion           VARCHAR2(2) NOT NULL,
    PRIMARY KEY(Id_Articulo)
)