CREATE TABLE DBE_EntitiesPreCalc(
    EntityType              VARCHAR2(4) NOT NULL,
    EntityId                INTEGER NOT NULL,
    Name                    VARCHAR2(200) NOT NULL,
    CreationDate            DATE NULL,
    HashedId                VARCHAR2(200) NOT NULL,
    PRIMARY KEY(EntityType, EntityId)
)