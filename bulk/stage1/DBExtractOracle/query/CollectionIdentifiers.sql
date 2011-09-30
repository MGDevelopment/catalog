SELECT          '{{CollectionIdType}}'  AS IdentifierTypeId,
                IdentifierValue         AS IDValue,
                CollectionId            AS CollectionId,
                'true'                  AS FlagPrimary
    FROM        DBE_Collections
    ORDER BY    IdentifierValue