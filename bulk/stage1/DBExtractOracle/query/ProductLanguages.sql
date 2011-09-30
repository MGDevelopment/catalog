SELECT      P.ProductId                 AS ProductId,
            '01'                        AS LanguageRole,
            NVL(L.LanguageCode, 'es')   AS LanguageCode,
            NULL                        AS CountryCode,
            NULL                        AS ScriptCode
    FROM        Articulos A
    LEFT JOIN   DBE_LanguageTranslation L
        ON      A.Idioma = L.Idioma
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    ORDER BY    P.ProductId