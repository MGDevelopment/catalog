SELECT          P.ProductId             AS ProductId,
                ATM.Nro_Tema            AS EntryOrder,
                '01'                    AS TitleType,           -- distinctive title
                '0'                     AS SequenceNumber,
                '04'                    AS TitleElementLevel,   -- content item
                NVL(L.LanguageCode, 'es')
                                        AS LanguageCode,
                NULL                    AS PartNumber,
                NULL                    AS YearOfAnnual,
                ATM.Nombre              AS TitleText,
                NULL                    AS TitlePrefix,
                NULL                    AS TitleWithoutPrefix,
                NULL                    AS Subtitle
    FROM        Articulos A
    LEFT JOIN   DBE_LanguageTranslation L
        ON      A.Idioma = L.Idioma
    INNER JOIN  Articulos_Temas_Musicales ATM
        ON      A.Id_Articulo = ATM.Id_Articulo
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    ORDER BY    P.ProductId