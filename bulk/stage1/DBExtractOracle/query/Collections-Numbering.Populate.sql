BEGIN
    INSERT INTO DBE_Collections(Id_Coleccion, IdentifierValue, CollectionId)
    SELECT          Id_Coleccion            AS Id_Coleccion,
                    'com.ilhsa.collection.'||TO_CHAR(Id_Coleccion)
                                            AS IdentifierValue,
                    ROWNUM                  AS CollectionId
        FROM        Colecciones
        ORDER BY    Id_Coleccion;
    COMMIT;
END;