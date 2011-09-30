SELECT          '{{SubjectIdType}}'     AS IdentifierTypeId,
                IdentifierValue         AS IDValue,
                SubjectId               AS SubjectId,
                'true'                  AS FlagPrimary,
                NULL                    AS SchemeVersion
    FROM        DBE_Subjects
    ORDER BY    IdentifierValue