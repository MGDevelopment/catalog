SELECT          U.UserId                AS UserId,
                CASE S2.Tipo_Persona
                    WHEN 'J' THEN           NULL
                    ELSE                    COALESCE(S2.Nombres, ST.Nombres)
                END                     AS FirstNames,
                CASE S2.Tipo_Persona
                    WHEN 'J' THEN           S2.Razon_Social
                    ELSE                    COALESCE(S2.Apellidos, ST.Apellidos)
                END                     AS LastNames,
                CASE S2.Tipo_Persona
                    WHEN 'J' THEN           'true'
                    ELSE                    'false'
                END                     AS FlagCompany,
                NULL                    AS NickName,
                TRIM(S2.Sexo)           AS Sex,
                CASE S2.Tipo_Persona
                    WHEN 'J' THEN           'CUIT'
                    ELSE                    S2.Tipo_Doc
                END                     AS IdType,
                CASE S2.Tipo_Persona
                    WHEN 'J' THEN           S2.CUIT
                    ELSE                    TO_CHAR(S2.Nro_Doc)
                END                     AS IdNumber,
                S2.Fecha_Nacimiento     AS BirthDate,
                CASE
                    WHEN PB.Id_Pais = 2 THEN            'AR'
                    WHEN PB.ISO31633_A2 IS NULL THEN    NULL
                    ELSE                                PB.ISO31633_A2
                END                     AS CountryOfBirth,
                CASE
                    WHEN PR.Id_Pais = 2 THEN            'AR'
                    WHEN PR.ISO31633_A2 IS NULL THEN    NULL
                    ELSE                                PR.ISO31633_A2
                END                     AS CountryOfResidence
    FROM        DBE_Users U
    LEFT JOIN   Socios2 S2
        ON      U.Id_Sucursal = S2.Id_Sucursal AND
                U.Id_Socio    = S2.Id_Socio
    LEFT JOIN   Paises PB
      ON        S2.Nacionalidad = PB.Id_Pais
    LEFT JOIN   Paises PR
      ON        S2.Id_Pais_IIBB = PR.Id_Pais
    LEFT JOIN   Socios_TMK ST
        ON      U.Id_Sucursal = ST.Id_Sucursal AND
                U.Id_Socio    = ST.Id_Socio
    ORDER BY    U.UserId