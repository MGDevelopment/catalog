CREATE TABLE Stage0_Subjects(
    SubjectId               INTEGER NOT NULL,
    Categoria_Seccion       INTEGER NOT NULL,
    Categoria_Grupo         INTEGER NOT NULL,
    Categoria_Familia       INTEGER NOT NULL,
    Categoria_Subfamilia    INTEGER NOT NULL,
    Subtype                 VARCHAR2(16) NOT NULL,
    PRIMARY KEY(SubjectId)
)
TABLESPACE DATOSSMALL;

CREATE INDEX Stage0_Subjects_Fields
    ON Stage0_Subjects(Categoria_Seccion, Categoria_Grupo,
                       Categoria_Familia, Categoria_Subfamilia)
    TABLESPACE INDICESSMALL;

COMMIT;

