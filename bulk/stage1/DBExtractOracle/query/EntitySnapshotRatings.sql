SELECT          'PROD'                  AS EntityType,
                P.ProductId             AS EntityId,
                MIN(COALESCE(CA5.Id_Comentario, CA4.Id_Comentario, CA3.Id_Comentario, CA2.Id_Comentario, CA1.Id_Comentario))
                                        AS BestCommentId,
                MIN(COALESCE(CA1.Id_Comentario, CA2.Id_Comentario, CA3.Id_Comentario, CA4.Id_Comentario, CA5.Id_Comentario))
                                        AS WorstCommentId,
--
-- esto sale con ".0" porque no es char
--
                MIN(COALESCE(R.Rating5Count, 0))
                                        AS Rating5Count,
                MIN(COALESCE(R.Rating4Count, 0))
                                        AS Rating4Count,
                MIN(COALESCE(R.Rating3Count, 0))
                                        AS Rating3Count,
                MIN(COALESCE(R.Rating2Count, 0))
                                        AS Rating2Count,
                MIN(COALESCE(R.Rating1Count, 0))
                                        AS Rating1Count
    FROM        Articulos A
    LEFT JOIN   Comentario_Articulos CA
        ON      A.Id_Articulo = CA.Id_Articulo AND CA.Estado = 'A'
    LEFT JOIN   (
                    SELECT          CA_1.Id_Articulo        AS Id_Articulo,
                                    MIN(CA_1.Id_Comentario) AS Id_Comentario
                        FROM        Comentario_Articulos CA_1
                        WHERE       CA_1.Evaluacion = 1 AND CA_1.Estado = 'A'
                        GROUP BY    CA_1.Id_Articulo
                ) CA1
        ON      CA.Id_Articulo = CA1.Id_Articulo
    LEFT JOIN   (
                    SELECT          CA_2.Id_Articulo        AS Id_Articulo,
                                    MIN(CA_2.Id_Comentario) AS Id_Comentario
                        FROM        Comentario_Articulos CA_2
                        WHERE       CA_2.Evaluacion = 2 AND CA_2.Estado = 'A'
                        GROUP BY    CA_2.Id_Articulo
                ) CA2
        ON      CA.Id_Articulo = CA2.Id_Articulo
    LEFT JOIN   (
                    SELECT          CA_3.Id_Articulo        AS Id_Articulo,
                                    MIN(CA_3.Id_Comentario) AS Id_Comentario
                        FROM        Comentario_Articulos CA_3
                        WHERE       CA_3.Evaluacion = 3 AND CA_3.Estado = 'A'
                        GROUP BY    CA_3.Id_Articulo
                ) CA3
        ON      CA.Id_Articulo = CA3.Id_Articulo
    LEFT JOIN   (
                    SELECT          CA_4.Id_Articulo        AS Id_Articulo,
                                    MIN(CA_4.Id_Comentario) AS Id_Comentario
                        FROM        Comentario_Articulos CA_4
                        WHERE       CA_4.Evaluacion = 4 AND CA_4.Estado = 'A'
                        GROUP BY    CA_4.Id_Articulo
                ) CA4
        ON      CA.Id_Articulo = CA4.Id_Articulo
    LEFT JOIN   (
                    SELECT          CA_5.Id_Articulo        AS Id_Articulo,
                                    MIN(CA_5.Id_Comentario) AS Id_Comentario
                        FROM        Comentario_Articulos CA_5
                        WHERE       CA_5.Evaluacion = 5 AND CA_5.Estado = 'A'
                        GROUP BY    CA_5.Id_Articulo
                ) CA5
        ON      CA.Id_Articulo = CA5.Id_Articulo
    LEFT JOIN   (
                    SELECT      R.Id_Articulo           AS Id_Articulo,
                                SUM(1 - COALESCE(NULLIF(COALESCE(R.Evaluacion, 0), 5) / R.Evaluacion, 0))
                                                        AS Rating5Count,
                                SUM(1 - COALESCE(NULLIF(COALESCE(R.Evaluacion, 0), 4) / R.Evaluacion, 0))
                                                        AS Rating4Count,
                                SUM(1 - COALESCE(NULLIF(COALESCE(R.Evaluacion, 0), 3) / R.Evaluacion, 0))
                                                        AS Rating3Count,
                                SUM(1 - COALESCE(NULLIF(COALESCE(R.Evaluacion, 0), 2) / R.Evaluacion, 0))
                                                        AS Rating2Count,
                                SUM(1 - COALESCE(NULLIF(COALESCE(R.Evaluacion, 0), 1) / R.Evaluacion, 0))
                                                        AS Rating1Count
                        FROM        Comentario_Articulos R
                        WHERE       R.Estado = 'A'
                        GROUP BY    R.Id_Articulo
                ) R
        ON      CA.Id_Articulo = R.Id_Articulo
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    GROUP BY    P.ProductId
    ORDER BY    P.ProductId