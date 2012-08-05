CREATE TABLE Stage0_DeltaControl(
    EntityType              VARCHAR2(4) NOT NULL,
    LastUpdateDate          DATE NOT NULL,
    NewUpdateDate           DATE NOT NULL,
    LastRun                 DATE NOT NULL
)
TABLESPACE DATOSSMALL;

CREATE UNIQUE INDEX Stage0_DeltaControl_PK_Idx
    ON Stage0_DeltaControl(EntityType)
    TABLESPACE INDICESSMALL;

ALTER TABLE Stage0_DeltaControl
    ADD CONSTRAINT Stage0_DeltaControl_PK
    PRIMARY KEY(EntityType)
    USING INDEX TABLESPACE INDICESSMALL;

COMMIT;

