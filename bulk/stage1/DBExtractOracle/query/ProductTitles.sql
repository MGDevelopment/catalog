SELECT      TO_CHAR(P.ProductId)    AS ProductId,
            '01'                    AS TitleType,
            'es'                    AS EffectiveLanguageCode,
            TRIM(NVL(A.Titulo, ' ') ||
                CASE A.Categoria_Seccion
                    WHEN 5 THEN                 ''
                    ELSE                        NVL2(A.AuxVarchar02, ' - ' || A.AuxVarchar02, '')
                END
            )                       AS EffectiveTitle,
            'false'                 AS FlagFixed,
            'es'                    AS ShadowEffectiveLanguageCode,
            TRIM(NVL(A.Titulo, ' ') ||
                CASE A.Categoria_Seccion
                    WHEN 5 THEN                 ''
                    ELSE                        NVL2(A.AuxVarchar02, ' - ' || A.AuxVarchar02, '')
                END
            )                       AS ShadowEffectiveTitle
    FROM    Articulos A
    INNER JOIN DBE_Products P
        ON  A.Id_Articulo = P.Id_Articulo
UNION
SELECT      TO_CHAR(P.ProductId)    AS ProductId,
            '06'                    AS TitleType,
            'en'                    AS EffectiveLanguageCode,
            A.AuxVarchar05          AS EffectiveTitle,
            'false'                 AS FlagFixed,
            'es'                    AS ShadowEffectiveLanguageCode,
            A.AuxVarchar05          AS ShadowEffectiveTitle
    FROM    Articulos A
    INNER JOIN DBE_Products P
        ON  A.Id_Articulo = P.Id_Articulo
    WHERE   A.AuxVarchar05 IS NOT NULL