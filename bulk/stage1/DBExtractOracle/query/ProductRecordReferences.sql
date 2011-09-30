SELECT      '{{OriginId}}'          AS OriginId,
            I.IdentifierValue       AS RecordReference,
            I.ProductId             AS ProductId,
            'true'                  AS FlagPrimarySource,
            'false'                 AS FlagDeleted
    FROM    DBE_Products I
    ORDER BY    I.ProductId