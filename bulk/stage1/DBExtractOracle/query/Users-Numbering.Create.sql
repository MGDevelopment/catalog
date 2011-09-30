CREATE TABLE DBE_Users(
    Id_Sucursal             NUMBER(4) NOT NULL,
    Id_Socio                NUMBER(10) NOT NULL,
    IdentifierValue         VARCHAR2(256) NOT NULL,
    HashedId                VARCHAR2(32) NOT NULL,
    UserId                  INTEGER NOT NULL,
    PRIMARY KEY(Id_Sucursal, Id_Socio)
)