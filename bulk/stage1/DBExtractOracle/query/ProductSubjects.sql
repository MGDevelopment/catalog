SELECT          ProductId               AS ProductId,
                EntryOrder              AS EntryOrder,
                SubjectId               AS SubjectId,
                CASE FlagMainSubject
                    WHEN 1 THEN                 'true'
                    ELSE                        'false'
                END                     AS FlagMainSubject,
                OriginalSubjectId       AS OriginalSubjectId
    FROM        DBE_ProductSubjects
    ORDER BY    ProductId, EntryOrder