BEGIN
    INSERT INTO DBE_Imprints(Id_Editor, IdentifierValue, ImprintId)
    SELECT          Id_Editor               AS Id_Editor,
                    'com.ilhsa.imprint.'||TO_CHAR(Id_Editor)
                                            AS IdentifierValue,
                    ROWNUM                  AS ImprintId
        FROM        Editores
        ORDER BY    Id_Editor;
    COMMIT;
END;