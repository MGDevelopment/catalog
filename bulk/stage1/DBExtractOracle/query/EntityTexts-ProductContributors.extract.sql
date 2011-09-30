SELECT          'PROD'                      AS EntityType,
                P.ProductId                 AS EntityId,
                'CONT'                      AS InRelationWithEntityType,
                C.ContributorId             AS InRelationWithEntityId,
                B.Role                      AS EntryCode,
                B.Parte                     AS Parte,
                'es'                        AS TextLanguage,
                NULL                        AS TextDate,
                B.Texto                     AS TextContent
    FROM        Articulos_Autores_Biografia B
    INNER JOIN  DBE_Products P
        ON      B.Id_Articulo = P.Id_Articulo
    INNER JOIN  DBE_Contributors C
        ON      B.Id_Autor = C.Id_Autor