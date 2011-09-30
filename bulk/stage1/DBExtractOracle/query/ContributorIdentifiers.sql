SELECT          '{{ContributorIdType}}' AS IdentifierTypeId,
                IdentifierValue         AS IDValue,
                ContributorId           AS ContributorId,
                'true'                  AS FlagPrimary
    FROM        DBE_Contributors
    ORDER BY    IdentifierValue