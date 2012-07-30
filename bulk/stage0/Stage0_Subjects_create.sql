CREATE TABLE Stage0_Subjects(
    SubjectId               INTEGER NOT NULL,
    Categoria_Seccion       INTEGER NOT NULL,
    Categoria_Grupo         INTEGER NOT NULL,
    Categoria_Familia       INTEGER NOT NULL,
    Categoria_Subfamilia    INTEGER NOT NULL,
    Subtype                 VARCHAR2(16) NOT NULL
)
TABLESPACE DATOSSMALL;

CREATE INDEX Stage0_Subjects_PK_Idx
    ON Stage0_Subjects(SubjectId)
    TABLESPACE INDICESSMALL;

CREATE INDEX Stage0_Subjects_Fields
    ON Stage0_Subjects(Categoria_Seccion, Categoria_Grupo,
                       Categoria_Familia, Categoria_Subfamilia)
    TABLESPACE INDICESSMALL;

ALTER TABLE Stage0_Subjects
    ADD CONSTRAINT Stage0_Subjects_PK
        PRIMARY KEY(SubjectId)
        USING INDEX Stage0_Subjects_PK_Idx;

COMMIT;

CREATE SEQUENCE Stage0_Subjects_seq
 START WITH     1000        ------ verify initial value
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;

COMMIT;