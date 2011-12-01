CREATE TABLE Stage01_Subjects(
    SubjectId               INTEGER NOT NULL,
    Categoria_Seccion       INTEGER NOT NULL,
    Categoria_Grupo         INTEGER NOT NULL,
    Categoria_Familia       INTEGER NOT NULL,
    Categoria_Subfamilia    INTEGER NOT NULL,
    Subtype                 VARCHAR2(16) NOT NULL
)
TABLESPACE DATOSSMALL;

CREATE INDEX Stage01_Subjects_PK_Idx
    ON Stage01_Subjects(SubjectId)
    TABLESPACE INDICESSMALL;

CREATE INDEX Stage01_Subjects_Fields
    ON Stage01_Subjects(Categoria_Seccion, Categoria_Grupo,
                       Categoria_Familia, Categoria_Subfamilia)
    TABLESPACE INDICESSMALL;

ALTER TABLE Stage01_Subjects
    ADD CONSTRAINT Stage01_Subjects_PK
        PRIMARY KEY(SubjectId)
        USING INDEX Stage01_Subjects_PK_Idx;

COMMIT;

