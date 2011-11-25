INSERT INTO Stage0_Subjects(SubjectId, Categoria_Seccion, Categoria_Grupo,
                            Categoria_Familia, Categoria_Subfamilia, Subtype)
SELECT          ROWNUM, D.*
    FROM        (
        SELECT          Categoria_Seccion               AS Categoria_Seccion,
                        -1                              AS Categoria_Grupo,
                        -1                              AS Categoria_Familia,
                        -1                              AS Categoria_Subfamilia,
                        'Seccion'                       AS Subtype
            FROM        Categ_Secciones
            WHERE       Categoria_Seccion IN (1, 3, 4, 5)
        UNION
        SELECT          Categoria_Seccion               AS Categoria_Seccion,
                        Categoria_Grupo                 AS Categoria_Grupo,
                        -1                              AS Categoria_Familia,
                        -1                              AS Categoria_Subfamilia,
                        'Grupo'                         AS Subtype
            FROM        Categ_Grupos
            WHERE       Categoria_Seccion IN (1, 3, 4, 5)
        UNION
        SELECT          Categoria_Seccion               AS Categoria_Seccion,
                        Categoria_Grupo                 AS Categoria_Grupo,
                        Categoria_Familia               AS Categoria_Familia,
                        -1                              AS Categoria_Subfamilia,
                        'Familia'                       AS Subtype
            FROM        Categ_Familias
            WHERE       Categoria_Seccion IN (1, 3, 4, 5)
        UNION
        SELECT          Categoria_Seccion               AS Categoria_Seccion,
                        Categoria_Grupo                 AS Categoria_Grupo,
                        Categoria_Familia               AS Categoria_Familia,
                        Categoria_Subfamilia            AS Categoria_Subfamilia,
                        'Subfamilia'                    AS Subtype
            FROM        Categ_Subfamilias
            WHERE       Categoria_Seccion IN (1, 3, 4, 5)
        ORDER BY        Categoria_Seccion, Categoria_Grupo, Categoria_Familia, Categoria_Subfamilia
    ) D;

COMMIT;