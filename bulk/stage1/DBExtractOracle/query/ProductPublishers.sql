SELECT          P.ProductId             AS ProductId,
                '0'                     AS EntryOrder,
                PU.PublisherId          AS PublisherId,
                '01'                    AS PublisherRole,
                NULL                    AS OriginalPublisherId
    FROM        Articulos A
    INNER JOIN  Editores E
        ON      A.Id_Editor = E.Id_Editor
    INNER JOIN  DBE_Publishers PU
        ON      E.Id_Editor = PU.Id_Editor
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    ORDER BY    P.ProductId