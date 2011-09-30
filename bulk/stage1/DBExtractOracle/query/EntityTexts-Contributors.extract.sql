SELECT          'CONT'                      AS EntityType,
                C.ContributorId             AS EntityId,
                NULL                        AS InRelationWithEntityType,
                NULL                        AS InRelationWithEntityId,
                '03'                        AS EntryCode,
                ABA.Parte                   AS Parte,
                'es'                        AS TextLanguage,
                NULL                        AS TextDate,
                ABA.Texto                   AS TextContent
    FROM        Articulos_Autores_Biografia ABA
    INNER JOIN  (
        SELECT          Id_Autor, MAX(Id_Articulo) Id_Articulo
            FROM        Articulos_Autores_Biografia
            WHERE       Role = 'A01'
            GROUP BY    Id_Autor
    ) S
        ON      ABA.Id_Articulo = S.Id_Articulo AND
                ABA.Id_Autor    = S.Id_Autor
    INNER JOIN  DBE_Contributors C
        ON      ABA.Id_Autor = C.Id_Autor
    WHERE       ABA.Role = 'A01'