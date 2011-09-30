SELECT      I.ProductId             AS ProductId,
            '{{OriginId}}'          AS OriginId,
            '{{MessageId}}'         AS MessageId
    FROM    DBE_Products I
    ORDER BY    I.ProductId