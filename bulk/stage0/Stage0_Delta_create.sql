CREATE TABLE Stage0_Delta(
    EntityType              VARCHAR2(4) NOT NULL,
    EntityId                INTEGER NOT NULL,
    FlagUpdated             INTEGER NOT NULL,
    FlagMain                INTEGER NOT NULL,
    FlagPrice               INTEGER NOT NULL,
    FlagComments            INTEGER NOT NULL,
    FlagRelated             INTEGER NOT NULL,
    LastUpdate              DATE NOT NULL
)
TABLESPACE DATOSBIG;

CREATE INDEX Stage0_Delta_PK_Idx
    ON Stage0_Delta(EntityType, EntityId)
    TABLESPACE INDICESBIG;

CREATE INDEX Stage0_Delta_Updated_Idx
    ON Stage0_Delta(FlagUpdated, EntityType, EntityId)
    TABLESPACE INDICESBIG;

ALTER TABLE Stage0_Delta
    ADD CONSTRAINT Stage0_Delta_PK
        PRIMARY KEY(EntityType, EntityId)
        USING INDEX Stage0_Delta_PK_Idx;

COMMIT;

