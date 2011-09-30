CREATE TABLE DBE_Subjects(
    Categoria_Seccion       INTEGER NOT NULL,
    Categoria_Grupo         INTEGER NOT NULL,
    Categoria_Familia       INTEGER NOT NULL,
    Categoria_Subfamilia    INTEGER NOT NULL,
    IdentifierValue         VARCHAR2(256) NOT NULL,
    SubjectId               INTEGER NOT NULL,
    PRIMARY KEY(Categoria_Seccion, Categoria_Grupo, Categoria_Familia, Categoria_Subfamilia)
)