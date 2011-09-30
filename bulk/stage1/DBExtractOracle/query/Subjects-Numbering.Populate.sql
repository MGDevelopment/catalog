BEGIN
    INSERT INTO DBE_Subjects(Categoria_Seccion, Categoria_Grupo, Categoria_Familia,
                             Categoria_Subfamilia, IdentifierValue, SubjectId)
    SELECT      Categoria_Seccion, Categoria_Grupo, Categoria_Familia, Categoria_Subfamilia,
                IdentifierValue, ROWNUM
        FROM    (
            SELECT      Categoria_Seccion       AS Categoria_Seccion,
                        0                       AS Categoria_Grupo,
                        0                       AS Categoria_Familia,
                        0                       AS Categoria_Subfamilia,
                        '{{SubjectTypePrefix}}'||TO_CHAR(Categoria_Seccion)
                                                AS IdentifierValue
                FROM    Categ_Secciones
                WHERE   Categoria_Seccion IN (1, 3, 4, 5)
            UNION
            SELECT      Categoria_Seccion       AS Categoria_Seccion,
                        Categoria_Grupo         AS Categoria_Grupo,
                        0                       AS Categoria_Familia,
                        0                       AS Categoria_Subfamilia,
                        '{{SubjectTypePrefix}}'||
                        TO_CHAR(Categoria_Seccion)||'.'||
                        TO_CHAR(Categoria_Grupo)
                                                AS IdentifierValue
                FROM    Categ_Grupos
                WHERE   Categoria_Seccion IN (1, 3, 4, 5) AND
                        Categoria_Grupo <> 0
            UNION
            SELECT      Categoria_Seccion       AS Categoria_Seccion,
                        Categoria_Grupo         AS Categoria_Grupo,
                        Categoria_Familia       AS Categoria_Familia,
                        0                       AS Categoria_Subfamilia,
                        '{{SubjectTypePrefix}}'||
                        TO_CHAR(Categoria_Seccion)||'.'||
                        TO_CHAR(Categoria_Grupo)||'.'||
                        TO_CHAR(Categoria_Familia)
                                                AS IdentifierValue
                FROM    Categ_Familias
                WHERE   Categoria_Seccion IN (1, 3, 4, 5) AND
                        Categoria_Grupo <> 0 AND
                        Categoria_Familia <> 0
            UNION
            SELECT      Categoria_Seccion       AS Categoria_Seccion,
                        Categoria_Grupo         AS Categoria_Grupo,
                        Categoria_Familia       AS Categoria_Familia,
                        Categoria_Subfamilia    AS Categoria_Subfamilia,
                        '{{SubjectTypePrefix}}'||
                        TO_CHAR(Categoria_Seccion)||'.'||
                        TO_CHAR(Categoria_Grupo)||'.'||
                        TO_CHAR(Categoria_Familia)||'.'||
                        TO_CHAR(Categoria_Subfamilia)
                                                AS IdentifierValue
                FROM    Categ_Subfamilias
                WHERE   Categoria_Seccion IN (1, 3, 4, 5) AND
                        Categoria_Grupo <> 0 AND
                        Categoria_Familia <> 0 AND
                        Categoria_Subfamilia <> 0
            ORDER BY    Categoria_Seccion, Categoria_Grupo, Categoria_Familia, Categoria_Subfamilia
        );
    COMMIT;
END;