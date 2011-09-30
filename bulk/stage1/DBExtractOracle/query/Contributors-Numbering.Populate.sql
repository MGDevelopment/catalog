BEGIN
    INSERT INTO DBE_Contributors(Id_Autor, IdentifierValue, ContributorId)
    SELECT          Id_Autor               AS Id_Autor,
                    'com.ilhsa.contributor.'||TO_CHAR(Id_Autor)
                                            AS IdentifierValue,
                    ROWNUM                  AS ContributorId
        FROM        Autores
        ORDER BY    Id_Autor;
    COMMIT;
END;