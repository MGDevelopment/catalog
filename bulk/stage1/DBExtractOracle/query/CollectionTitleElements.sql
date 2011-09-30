SELECT      I.CollectionId          AS CollectionId,
            '01'                    AS TitleType,
            '0'                     AS EntryOrder,
            'es'                    AS LanguageCode,
            '02'                    AS TitleElementLevel,
            NULL                    AS PartNumber,
            NULL                    AS YearOfAnnual,
            L.Descripcion           AS TitleText,
            NULL                    AS TitlePrefix,
            NULL                    AS TitleWithoutPrefix,
            NULL                    AS Subtitle
    FROM    Colecciones L
    INNER JOIN DBE_Collections I
        ON  L.Id_Coleccion = I.Id_Coleccion
    ORDER BY    I.CollectionId