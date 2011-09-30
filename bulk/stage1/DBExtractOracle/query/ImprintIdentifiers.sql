SELECT          '{{ImprintIdType}}'     AS IdentifierTypeId,
                IdentifierValue         AS IDValue,
                ImprintId               AS ImprintId,
                'true'                  AS FlagPrimary
    FROM        DBE_Imprints
    ORDER BY    IdentifierValue