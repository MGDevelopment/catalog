BEGIN
    INSERT INTO DBE_Publishers(Id_Editor, IdentifierValue, PublisherId)
    SELECT          Id_Editor               AS Id_Editor,
                    'com.ilhsa.publisher.'||TO_CHAR(Id_Editor)
                                            AS IdentifierValue,
                    ROWNUM                  AS PublisherId
        FROM        Editores
        ORDER BY    Id_Editor;
    COMMIT;
END;