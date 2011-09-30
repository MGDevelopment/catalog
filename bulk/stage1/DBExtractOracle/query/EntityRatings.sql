SELECT          'PROD'                  AS EntityType,
                P.ProductId             AS EntityId,
                CA.Id_Comentario        AS RatingId,
                U.UserId                AS UserId,
                CASE CA.Estado
                    WHEN 'A' THEN               'A'
                    WHEN 'R' THEN               'R'
                    WHEN 'N' THEN               'P'
                    ELSE                        'P'
                END                     AS CommentStatus,
                CA.Comentario           AS CommentText,
                CA.Evaluacion           AS Rating,
                CA.Fecha                AS CreationDate,
                NULL                    AS LastUpdateDate
    FROM        Comentario_Articulos CA
    INNER JOIN  DBE_Products P
        ON      CA.Id_Articulo = P.Id_Articulo
    INNER JOIN  DBE_Users U
        ON      CA.Id_Sucursal_Socio = U.Id_Sucursal AND
                CA.Id_Socio          = U.Id_Socio
    ORDER BY    P.ProductId, CA.Id_Comentario