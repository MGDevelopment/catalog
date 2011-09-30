SELECT          U.UserId                AS UserId,
                U.HashedId              AS HashedId,
                'es'                    AS PreferredLanguage,
                NULL                    AS ReplaceWithThisId,
                'false'                 AS FlagInvisible,
                'false'                 AS FlagDeleted,
                COALESCE(S2.F_Alta, ST.F_Alta, CURRENT_DATE)
                                        AS CreationDate,
                NULL                    AS LastUpdateDate,
                NULL                    AS DeletionDate
    FROM        DBE_Users U
    LEFT JOIN   Socios2 S2
        ON      U.Id_Sucursal = S2.Id_Sucursal AND
                U.Id_Socio    = S2.Id_Socio
    LEFT JOIN   Socios_TMK ST
        ON      U.Id_Sucursal = ST.Id_Sucursal AND
                U.Id_Socio    = ST.Id_Socio
    ORDER BY    U.UserId