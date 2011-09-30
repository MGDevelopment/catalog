CREATE TABLE DBE_EntityRelatedProducts(
    EntityType              VARCHAR2(4) NOT NULL,
    EntityId                INTEGER NOT NULL,
    EntityRelationCode      VARCHAR2(2) NOT NULL,
    EntryOrder              INTEGER NOT NULL,
    RelatedEntityType       VARCHAR2(4) NOT NULL,
    RelatedEntityId         INTEGER NOT NULL,
    PRIMARY KEY(EntityType, EntityId, EntityRelationCode, EntryOrder)
)