--
-- PAGE - Home page
--
INSERT INTO Stage0_Delta(EntityType, EntityId, FlagUpdated, FlagMain,
                        FlagPrice, FlagComments, FlagRelated, LastUpdate)
    VALUES('PAGE', 1, 0, 0, 0, 0, 0, CURRENT_TIMESTAMP);

COMMIT;

--
-- SUBJ - Categorias (subjects)
--
INSERT INTO Stage0_Delta(EntityType, EntityId, FlagUpdated, FlagMain,
                        FlagPrice, FlagComments, FlagRelated, LastUpdate)
SELECT          'SUBJ'                  AS EntityType,
                SubjectId               AS EntityId,
                0                       AS FlagUpdated,
                0                       AS FlagMain,
                0                       AS FlagPrice,
                0                       AS FlagComments,
                0                       AS FlagRelated,
                CURRENT_TIMESTAMP       AS LastUpdate
    FROM        Stage0_Subjects
    ORDER BY    SubjectId;

COMMIT;

--
-- PROD - Articulos (products)
--
INSERT INTO Stage0_Delta(EntityType, EntityId, FlagUpdated, FlagMain,
                        FlagPrice, FlagComments, FlagRelated, LastUpdate)
SELECT          'PROD'                  AS EntityType,
                Id_Articulo             AS EntityId,
                0                       AS FlagUpdated,
                0                       AS FlagMain,
                0                       AS FlagPrice,
                0                       AS FlagComments,
                0                       AS FlagRelated,
                CURRENT_TIMESTAMP       AS LastUpdate
    FROM        Articulos
    ORDER BY    Id_Articulo;

COMMIT;

--
-- IMPR - Editores (imprints)
--
INSERT INTO Stage0_Delta(EntityType, EntityId, FlagUpdated, FlagMain,
                        FlagPrice, FlagComments, FlagRelated, LastUpdate)
SELECT          'IMPR'                  AS EntityType,
                Id_Editor               AS EntityId,
                0                       AS FlagUpdated,
                0                       AS FlagMain,
                0                       AS FlagPrice,
                0                       AS FlagComments,
                0                       AS FlagRelated,
                CURRENT_TIMESTAMP       AS LastUpdate
    FROM        Editores
    ORDER BY    Id_Editor;

COMMIT;

--
-- CONT - Autores (contributors)
--
INSERT INTO Stage0_Delta(EntityType, EntityId, FlagUpdated, FlagMain,
                        FlagPrice, FlagComments, FlagRelated, LastUpdate)
SELECT          'CONT'                  AS EntityType,
                Id_Autor                AS EntityId,
                0                       AS FlagUpdated,
                0                       AS FlagMain,
                0                       AS FlagPrice,
                0                       AS FlagComments,
                0                       AS FlagRelated,
                CURRENT_TIMESTAMP       AS LastUpdate
    FROM        Autores
    ORDER BY    Id_Autor;

COMMIT;

--
-- _DSP - Disponibilidades (marcas basicas)
--
INSERT INTO Stage0_Delta(EntityType, EntityId, FlagUpdated, FlagMain,
                        FlagPrice, FlagComments, FlagRelated, LastUpdate)
SELECT          '_DSP'                  AS EntityType,
                Id_Disponibilidad       AS EntityId,
                0                       AS FlagUpdated,
                0                       AS FlagMain,
                0                       AS FlagPrice,
                0                       AS FlagComments,
                0                       AS FlagRelated,
                CURRENT_TIMESTAMP       AS LastUpdate
    FROM        Disponibilidades
    WHERE       Id_Esquema = 'PROD'
    ORDER BY    Id_Disponibilidad;

COMMIT;
