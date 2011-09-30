SELECT      TO_CHAR(P.ProductId)    AS ProductId,
            '01'                    AS TitleType,
            '0'                     AS EntryOrder,
            'es'                    AS LanguageCode,
            '01'                    AS TitleElementLevel,
            NULL                    AS PartNumber,
            NULL                    AS YearOfAnnual,
            A.Titulo                AS TitleText,
            NULL                    AS TitlePrefix,
            NULL                    AS TitleWithoutPrefix,
            A.AuxVarchar02          AS Subtitle
    FROM    Articulos A
    INNER JOIN DBE_Products P
        ON  A.Id_Articulo = P.Id_Articulo
UNION
SELECT      TO_CHAR(P.ProductId)    AS ProductId,
            '06'                    AS TitleType,
            '0'                     AS EntryOrder,
            'en'                    AS LanguageCode,
            '01'                    AS TitleElementLevel,
            NULL                    AS PartNumber,
            NULL                    AS YearOfAnnual,
            A.AuxVarchar05          AS TitleText,
            NULL                    AS TitlePrefix,
            NULL                    AS TitleWithoutPrefix,
            NULL                    AS Subtitle
    FROM    Articulos A
    INNER JOIN DBE_Products P
        ON  A.Id_Articulo = P.Id_Articulo
    WHERE   A.AuxVarchar05 IS NOT NULL