SELECT          U.UserId                AS UserId,
                U.UserId                AS CredentialId,
                'EM'                    AS CredentialType,  -- email
                'socio'||TO_CHAR(U.Id_Sucursal)||'-'||TO_CHAR(U.Id_Socio)||'@ilhsa.com'
                                        AS CredentialLoginName,
                'MD5:'||U.HashedId||':'||RAWTOHEX(TMK_Hashes.TMK_MD5(U.HashedId||':'||TO_CHAR(U.Id_Socio)))
                                        AS CredentialLoginSecret,
                'false'                 AS FlagEnabled,
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