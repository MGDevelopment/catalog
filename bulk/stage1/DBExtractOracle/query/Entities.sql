SELECT          EntityType              AS EntityType,
                EntityId                AS EntityId,
                Name                    AS Name,
                HashedId                AS HashedId,
                'false'                 AS FlagDeleted,
                CreationDate            AS CreationDate,
                NULL                    AS LastUpdateDate,
                NULL                    AS DeletionDate
    FROM        DBE_EntitiesPreCalc
    ORDER BY    EntityType, EntityId