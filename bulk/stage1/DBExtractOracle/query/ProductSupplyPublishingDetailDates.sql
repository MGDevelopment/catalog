SELECT      P.ProductId                 AS ProductId,
            '01'                        AS DateRole,        -- publication date
            '05'                        AS DateFormat,      -- year
            TO_CHAR(A.AuxNumber09)||'-01-01'
                                        AS DateValue,
            'false'                     AS FlagFixed,
            '05'                        AS ShadowDateFormat,
            TO_CHAR(A.AuxNumber09)||'-01-01'
                                        AS ShadowDateValue
    FROM        Articulos A
    INNER JOIN  DBE_Products P
        ON      A.Id_Articulo = P.Id_Articulo
    WHERE       A.AuxNumber09 IS NOT NULL AND
                1900 <= A.AuxNumber09 AND
                A.AuxNumber09 <= EXTRACT(YEAR FROM CURRENT_DATE)
    ORDER BY    P.ProductId