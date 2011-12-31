
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
    WHERE       Id_Articulo NOT IN (
                    SELECT      EntityId
                        FROM    Stage0_Delta
                        WHERE   EntityType = 'PROD'
                )
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
    WHERE       Id_Editor NOT IN (
                    SELECT      EntityId
                        FROM    Stage0_Delta
                        WHERE   EntityType = 'IMPR'
                )
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
    WHERE       Id_Autor NOT IN (
                    SELECT      EntityId
                        FROM    Stage0_Delta
                        WHERE   EntityType = 'CONT'
                )
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
    WHERE       Id_Esquema = 'PROD' AND
                Id_Disponibilidad NOT IN (
                    SELECT      EntityId
                        FROM    Stage0_Delta
                        WHERE   EntityType = '_DSP'
                )
    ORDER BY    Id_Disponibilidad;

COMMIT;
