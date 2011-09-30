SELECT          'SUBJ'                      AS EntityType,
                TO_CHAR(S.SubjectId)        AS EntityId,
                'YV'                        AS EntityRelationCode,
                Orden                       AS EntryOrder,
                'PROD'                      AS RelatedEntityType,
                TO_CHAR(P.ProductId)        AS RelatedEntityId,
                NULL                        AS OriginalRelatedEntityId
    FROM        Mas_Vendidos_Subfamilia MVS
    INNER JOIN  DBE_Subjects S
        ON      MVS.Categoria_Seccion       = S.Categoria_Seccion       AND
                0                           = S.Categoria_Grupo         AND
                0                           = S.Categoria_Familia       AND
                0                           = S.Categoria_Subfamilia
    INNER JOIN  DBE_Products P
        ON      MVS.Id_Articulo = P.Id_Articulo
UNION
SELECT          'SUBJ'                      AS EntityType,
                TO_CHAR(S.SubjectId)        AS EntityId,
                'YV'                        AS EntityRelationCode,
                Orden                       AS EntryOrder,
                'PROD'                      AS RelatedEntityType,
                TO_CHAR(P.ProductId)        AS RelatedEntityId,
                NULL                        AS OriginalRelatedEntityId
    FROM        Mas_Vendidos_Subfamilia MVS
    INNER JOIN  DBE_Subjects S
        ON      MVS.Categoria_Seccion       = S.Categoria_Seccion       AND
                MVS.Categoria_Grupo         = S.Categoria_Grupo         AND
                0                           = S.Categoria_Familia       AND
                0                           = S.Categoria_Subfamilia
    INNER JOIN  DBE_Products P
        ON      MVS.Id_Articulo = P.Id_Articulo
UNION
SELECT          'SUBJ'                      AS EntityType,
                TO_CHAR(S.SubjectId)        AS EntityId,
                'YV'                        AS EntityRelationCode,
                Orden                       AS EntryOrder,
                'PROD'                      AS RelatedEntityType,
                TO_CHAR(P.ProductId)        AS RelatedEntityId,
                NULL                        AS OriginalRelatedEntityId
    FROM        Mas_Vendidos_Subfamilia MVS
    INNER JOIN  DBE_Subjects S
        ON      MVS.Categoria_Seccion       = S.Categoria_Seccion       AND
                MVS.Categoria_Grupo         = S.Categoria_Grupo         AND
                MVS.Categoria_Familia       = S.Categoria_Familia       AND
                0                           = S.Categoria_Subfamilia
    INNER JOIN  DBE_Products P
        ON      MVS.Id_Articulo = P.Id_Articulo
UNION
SELECT          'SUBJ'                      AS EntityType,
                TO_CHAR(S.SubjectId)        AS EntityId,
                'YV'                        AS EntityRelationCode,
                Orden                       AS EntryOrder,
                'PROD'                      AS RelatedEntityType,
                TO_CHAR(P.ProductId)        AS RelatedEntityId,
                NULL                        AS OriginalRelatedEntityId
    FROM        Mas_Vendidos_Subfamilia MVS
    INNER JOIN  DBE_Subjects S
        ON      MVS.Categoria_Seccion       = S.Categoria_Seccion       AND
                MVS.Categoria_Grupo         = S.Categoria_Grupo         AND
                MVS.Categoria_Familia       = S.Categoria_Familia       AND
                MVS.Categoria_Subfamilia    = S.Categoria_Subfamilia
    INNER JOIN  DBE_Products P
        ON      MVS.Id_Articulo = P.Id_Articulo
ORDER BY    EntityType, EntityId, EntityRelationCode, EntryOrder, RelatedEntityType, RelatedEntityId