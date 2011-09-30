SELECT          P.ProductId             AS ProductId,
                ATM.Nro_Tema            AS EntryOrder,
                '01'                    AS TitleType,           -- distinctive title
                NVL(L.LanguageCode, 'es')
                                        AS EffectiveLanguageCode,
                ATM.Nombre              AS EffectiveTitle,
                'false'                 AS FlagFixed,
                NVL(L.LanguageCode, 'es')
                                        AS ShadowLanguageCode,
                ATM.Nombre              AS ShadowTitle
    FROM        Articulos A
    LEFT JOIN   DBE_LanguageTranslation L
        ON      A.Idioma = L.Idioma
    INNER JOIN  Articulos_Temas_Musicales ATM
        ON      A.Id_Articulo = ATM.Id_Articulo
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    ORDER BY    P.ProductId