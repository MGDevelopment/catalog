BEGIN
    INSERT INTO DBE_Users(Id_Sucursal, Id_Socio, IdentifierValue, HashedId, UserId)
    SELECT          Id_Sucursal             AS Id_Sucursal,
                    Id_Socio                AS Id_Socio,
                    IdentifierValue         AS IdentifierValue,
                    TMK_Hashes.TMK_GetHash('USER:'||TO_CHAR(ROWNUM))
                                            AS HashedId,
                    ROWNUM                  AS UserId
        FROM    (
                SELECT          Id_Sucursal             AS Id_Sucursal,
                                Id_Socio                AS Id_Socio,
                                'com.ilhsa.user.'||TO_CHAR(Id_Sucursal)||'-'||TO_CHAR(Id_Socio)
                                                        AS IdentifierValue
                    FROM        Socios2
                    WHERE       Login IS NOT NULL
                UNION
                SELECT          Id_Sucursal             AS Id_Sucursal,
                                Id_Socio                AS Id_Socio,
                                'com.ilhsa.user.'||TO_CHAR(Id_Sucursal)||'-'||TO_CHAR(Id_Socio)
                                                        AS IdentifierValue
                    FROM        Socios_Tmk
                ORDER BY    Id_Sucursal, Id_Socio
        );
    COMMIT;
END;