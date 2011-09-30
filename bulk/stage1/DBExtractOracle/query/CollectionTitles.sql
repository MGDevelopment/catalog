SELECT      I.CollectionId          AS CollectionId,
            '01'                    AS TitleType,
            'es'                    AS EffectiveLanguageCode,
            L.Descripcion           AS EffectiveTitle,
            'false'                 AS FlagFixed,
            'es'                    AS ShadowEffectiveLanguageCode,
            L.Descripcion           AS ShadowEffectiveTitle
    FROM    Colecciones L
    INNER JOIN DBE_Collections I
        ON  L.Id_Coleccion = I.Id_Coleccion
    ORDER BY    I.CollectionId