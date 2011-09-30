SELECT      '{{OriginId}}'          AS OriginId,
            I.IdentifierValue       AS UserReference,
            I.UserId                AS UserId,
            'false'                 AS FlagDeleted
    FROM    DBE_Users I
    ORDER BY    I.UserId