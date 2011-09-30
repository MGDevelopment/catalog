SELECT          'PROD'                      AS EntityType,
                P.ProductId                 AS EntityId,
                NULL                        AS InRelationWithEntityType,
                NULL                        AS InRelationWithEntityId,
                T.Tipo                      AS EntryCode,
                T.Parte                     AS Parte,
                'es'                        AS TextLanguage,
                T.Fecha_Aparicion           AS TextDate,
                CASE T.Id_Articulo
                    WHEN 250886 THEN                REPLACE(T.Texto, CHR(0))
                    WHEN 73656 THEN                 RTRIM(T.Texto, '\\')
                    ELSE                            T.Texto
                END                         AS TextContent
    FROM        Articulos_Textos T
    INNER JOIN  DBE_Products P
        ON      T.Id_Articulo = P.Id_Articulo
    WHERE       T.Idioma <> 'IN'