SELECT      I.PublisherId           AS PublisherId,
            '01'                    AS WebsiteRole,
            L.URL                   AS WebsiteLink,
            NULL                    AS WebsiteDescription,
            'false'                 AS FlagFixed,
            L.URL                   AS ShadowWebsiteRole,
            NULL                    AS ShadowWebsiteLink
    FROM    Editores L
    INNER JOIN DBE_Publishers I
        ON  L.Id_Editor = I.Id_Editor
    WHERE   L.URL IS NOT NULL
    ORDER BY    I.PublisherId