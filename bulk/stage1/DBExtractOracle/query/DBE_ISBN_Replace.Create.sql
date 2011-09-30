CREATE TABLE DBE_ISBN_Replace(
    Id_articulo             NUMBER(10) NOT NULL,
    Tipo_Codigo             VARCHAR2(1) NOT NULL,
    ISBN                    VARCHAR2(20) NOT NULL,
    R_Tipo_Codigo           VARCHAR2(1) NOT NULL,
    R_ISBN                  VARCHAR2(20) NOT NULL,
    Estado_ILHSA            VARCHAR2(1) NOT NULL,
    PRIMARY KEY(Id_Articulo, Tipo_Codigo, ISBN)
)