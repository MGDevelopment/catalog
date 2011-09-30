SELECT          '{{PublisherIdType}}'   AS IdentifierTypeId,
                IdentifierValue         AS IDValue,
                PublisherId             AS PublisherId,
                'true'                  AS FlagPrimary
    FROM        DBE_Publishers
    ORDER BY    IdentifierValue