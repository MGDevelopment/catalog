SELECT      I.ContributorId         AS ContributorId,
            COALESCE(TRIM(C.Titles || ' ' || C.First_Name || ' ' || C.Last_Name),
                     'Sin Definir '||TO_CHAR(C.Id_Autor))
                                    AS PersonName,
            'false'                 AS FlagFixed,
            COALESCE(TRIM(C.Titles || ' ' || C.First_Name || ' ' || C.Last_Name),
                     'Sin Definir '||TO_CHAR(C.Id_Autor))
                                    AS ShadowPersonName,
            TRIM(
                NVL(C.Last_Name, ' ') ||
                CASE
                    WHEN    C.Titles IS NOT NULL OR
                            C.First_Name IS NOT NULL THEN       ', '
                    ELSE                                        ' '
                END ||
                NVL(C.Titles, ' ') || ' ' ||
                NVL(C.First_Name, ' '))
                                    AS PersonNameInverted,
            'false'                 AS FlagIsCorporate,
            C.Titles                AS TitlesBeforeNames,
            C.First_Name            AS NamesBeforeKey,
            NULL                    AS PrefixToKey,
            C.Last_Name             AS KeyNames,
            NULL                    AS NamesAfterKey,
            NULL                    AS SuffixToKey,
            NULL                    AS LetterAfterNames,
            NULL                    AS TitlesAfterNames,
            NULL                    AS ReplaceWithThisId,
            'false'                 AS FlagInvisible,
            'false'                 AS FlagDeleted,
            L.F_Alta                AS CreationDate,
            NULL                    AS LastUpdateDate,
            NULL                    AS DeletionDate
    FROM    Autores L
    INNER JOIN DBE_ContributorPreCalc C
        ON  L.Id_Autor = C.Id_Autor
    INNER JOIN DBE_Contributors I
        ON  L.Id_Autor = I.Id_Autor
    ORDER BY    I.ContributorId