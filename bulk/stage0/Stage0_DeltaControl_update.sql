------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
--
-- Each entity is updated according to the following plan:
--
-- 1. the control table is updated with the current
--    time (field NewUpdateDate)
-- 2. missing entries are added (for new records)
-- 3. entities that have updates in the
--    [ LastUpdateDate, NewUpdateDate) are marked as
--    changed
-- 4. external resources (images, txt files, etc) are checked
--    for changed (done in Python)
-- 5. the control table is marked with the new last date
--    (field LastUpdateDate = NewUpdateDate)
--
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

UPDATE Stage0_DeltaControl
    SET         LastUpdateDate      = '01-MAR-2011'
    WHERE       EntityType = 'CONT';
UPDATE Stage0_DeltaControl
    SET         LastUpdateDate      = '01-MAR-2011'
    WHERE       EntityType = 'IMPR';
UPDATE Stage0_DeltaControl
    SET         LastUpdateDate      = '01-MAR-2011'
    WHERE       EntityType = 'SUBJ';
UPDATE Stage0_DeltaControl
    SET         LastUpdateDate      = '01-MAR-2011'
    WHERE       EntityType = '_DSP';
UPDATE Stage0_DeltaControl
    SET         LastUpdateDate      = '01-MAR-2011'
    WHERE       EntityType = 'PROD';
UPDATE Stage0_DeltaControl
    SET         LastUpdateDate      = '01-MAR-2011'
    WHERE       EntityType = 'PAGE';
COMMIT;

---------------------------------------------
---------------------------------------------
--
-- entity CONT
--
---------------------------------------------
---------------------------------------------

--
-- 1. figure out the to update range
--
UPDATE Stage0_DeltaControl
    SET         NewUpdateDate       = SYSDATE
    WHERE       EntityType = 'CONT';
COMMIT;

--
-- 2. add entries for the new records
--
INSERT INTO Stage0_Delta(EntityType, EntityId, FlagUpdated, FlagMain,
                        FlagPrice, FlagComments, FlagRelated, LastUpdate)
SELECT          'CONT'                  AS EntityType,
                Id_Autor                AS EntityId,
                1                       AS FlagUpdated,
                0                       AS FlagMain,
                0                       AS FlagPrice,
                0                       AS FlagComments,
                0                       AS FlagRelated,
                SYSDATE                 AS LastUpdate
    FROM        Autores
    WHERE       Id_Autor NOT IN (
                    SELECT      EntityId
                        FROM    Stage0_Delta
                        WHERE   EntityType = 'CONT'
                )
    ORDER BY    Id_Autor;
COMMIT;

--
-- 3. mark the entries to be updated
--
UPDATE Stage0_Delta
    SET         FlagUpdated         = 1,
                LastUpdate          = SYSDATE
    WHERE       EntityType = 'CONT' AND
                EntityId IN (
                    --
                    -- Autores (NO INDEX ON F_Modi)
                    --
                    SELECT          A.Id_Autor
                        FROM        Autores A
                        WHERE       A.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'CONT') AND
                                    A.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'CONT')
                    UNION ALL
                    --
                    -- Articulos_Autores (NO INDEX ON F_Modi)
                    --
                    SELECT          A.Id_Autor
                        FROM        Articulos_Autores A
                        WHERE       A.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'CONT') AND
                                    A.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'CONT')
                );
COMMIT;

--
-- 4. external resources
--
-- TODO - check biographies
--

--
-- 5. mark the range updated
--
UPDATE Stage0_DeltaControl
    SET         LastUpdateDate      = NewUpdateDate
    WHERE       EntityType = 'CONT';
COMMIT;

---------------------------------------------
---------------------------------------------
--
-- entity IMPR
--
---------------------------------------------
---------------------------------------------

--
-- 1. figure out the to update range
--
UPDATE Stage0_DeltaControl
    SET         NewUpdateDate       = SYSDATE
    WHERE       EntityType = 'IMPR';
COMMIT;

--
-- 2. add entries for the new records
--
INSERT INTO Stage0_Delta(EntityType, EntityId, FlagUpdated, FlagMain,
                        FlagPrice, FlagComments, FlagRelated, LastUpdate)
SELECT          'IMPR'                  AS EntityType,
                Id_Editor               AS EntityId,
                1                       AS FlagUpdated,
                0                       AS FlagMain,
                0                       AS FlagPrice,
                0                       AS FlagComments,
                0                       AS FlagRelated,
                SYSDATE                 AS LastUpdate
    FROM        Editores
    WHERE       Id_Editor NOT IN (
                    SELECT      EntityId
                        FROM    Stage0_Delta
                        WHERE   EntityType = 'IMPR'
                )
    ORDER BY    Id_Editor;
COMMIT;

--
-- 3. mark the entries to be updated
--
UPDATE Stage0_Delta
    SET         FlagUpdated         = 1,
                LastUpdate          = SYSDATE
    WHERE       EntityType = 'IMPR' AND
                EntityId IN (
                    --
                    -- Editores
                    --
                    SELECT          E.Id_Editor
                        FROM        Editores E
                        WHERE       E.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'IMPR') AND
                                    E.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'IMPR')
                );
COMMIT;

--
-- 4. external resources
--
-- nothing to do
--

--
-- 5. mark the range updated
--
UPDATE Stage0_DeltaControl
    SET         LastUpdateDate      = NewUpdateDate
    WHERE       EntityType = 'IMPR';
COMMIT;

---------------------------------------------
---------------------------------------------
--
-- entity SUBJ
--
---------------------------------------------
---------------------------------------------

--
-- 1. figure out the to update range
--
UPDATE Stage0_DeltaControl
    SET         NewUpdateDate       = SYSDATE
    WHERE       EntityType = 'SUBJ';
COMMIT;

--
-- 2. add entries for the new records
--
INSERT INTO Stage0_Subjects(SubjectId, Categoria_Seccion, Categoria_Grupo,
                            Categoria_Familia, Categoria_Subfamilia, Subtype)
SELECT              ROWNUM + (SELECT MAX(S0.SubjectId) FROM Stage0_Subjects S0),
                    Categoria_Seccion,
                    Categoria_Grupo,
                    Categoria_Familia,
                    Categoria_Subfamilia,
                    Subtype
    FROM            (
        SELECT              S.Categoria_Seccion,
                            S.Categoria_Grupo,
                            S.Categoria_Familia,
                            S.Categoria_Subfamilia,
                            S.Subtype
            FROM            (
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
            ) S
            WHERE   (S.Categoria_Seccion, S.Categoria_Grupo, S.Categoria_Familia,
                     S.Categoria_Subfamilia, S.Subtype) NOT IN (
                             SELECT     SS.Categoria_Seccion,
                                        SS.Categoria_Grupo,
                                        SS.Categoria_Familia,
                                        SS.Categoria_Subfamilia,
                                        SS.Subtype
                                  FROM  Stage0_Subjects SS
                    )
            ORDER BY            S.Categoria_Seccion, S.Categoria_Grupo, S.Categoria_Familia,
                                S.Categoria_Subfamilia
    );
COMMIT;

--
-- 3. mark the entries to be updated
--
UPDATE Stage0_Delta
    SET         FlagUpdated         = 1,
                LastUpdate          = SYSDATE
    WHERE       EntityType = 'SUBJ' AND
                EntityId IN (
                    --
                    -- Categ_Secciones (NO INDEX ON F_Modi)
                    --
                    SELECT          S.SubjectId
                        FROM        Categ_Secciones C
                        INNER JOIN  Stage0_Subjects S
                            ON      C.Categoria_Seccion     = S.Categoria_Seccion   AND
                                    S.Categoria_Grupo       = -1                    AND
                                    S.Categoria_Familia     = -1                    AND
                                    S.Categoria_Subfamilia  = -1
                        WHERE       C.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'SUBJ') AND
                                    C.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'SUBJ')
                    UNION ALL
                    --
                    -- Categ_Grupos (NO INDEX ON F_Modi)
                    --
                    SELECT          S.SubjectId
                        FROM        Categ_Grupos C
                        INNER JOIN  Stage0_Subjects S
                            ON      C.Categoria_Seccion     = S.Categoria_Seccion   AND
                                    C.Categoria_Grupo       = S.Categoria_Grupo     AND
                                    S.Categoria_Familia     = -1                    AND
                                    S.Categoria_Subfamilia  = -1
                        WHERE       C.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'SUBJ') AND
                                    C.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'SUBJ')
                    UNION ALL
                    --
                    -- Categ_Familias (NO INDEX ON F_Modi)
                    --
                    SELECT          S.SubjectId
                        FROM        Categ_Familias C
                        INNER JOIN  Stage0_Subjects S
                            ON      C.Categoria_Seccion     = S.Categoria_Seccion   AND
                                    C.Categoria_Grupo       = S.Categoria_Grupo     AND
                                    C.Categoria_Familia     = S.Categoria_Familia   AND
                                    S.Categoria_Subfamilia  = -1
                        WHERE       C.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'SUBJ') AND
                                    C.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'SUBJ')
                    UNION ALL
                    --
                    -- Categ_Subfamilias (NO INDEX ON F_Modi)
                    --
                    SELECT          S.SubjectId
                        FROM        Categ_Subfamilias C
                        INNER JOIN  Stage0_Subjects S
                            ON      C.Categoria_Seccion     = S.Categoria_Seccion   AND
                                    C.Categoria_Grupo       = S.Categoria_Grupo     AND
                                    C.Categoria_Familia     = S.Categoria_Familia   AND
                                    C.Categoria_Subfamilia  = S.Categoria_Subfamilia
                        WHERE       C.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'SUBJ') AND
                                    C.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'SUBJ')
                );
COMMIT;

--
-- 4. external resources
--
-- nothing to do
--

--
-- 5. mark the range updated
--
UPDATE Stage0_DeltaControl
    SET         LastUpdateDate      = NewUpdateDate
    WHERE       EntityType = 'SUBJ';
COMMIT;

---------------------------------------------
---------------------------------------------
--
-- entity _DSP
--
---------------------------------------------
---------------------------------------------

--
-- 1. figure out the to update range
--
UPDATE Stage0_DeltaControl
    SET         NewUpdateDate       = SYSDATE
    WHERE       EntityType = '_DSP';
COMMIT;

--
-- 2. add entries for the new records
--
INSERT INTO Stage0_Delta(EntityType, EntityId, FlagUpdated, FlagMain,
                        FlagPrice, FlagComments, FlagRelated, LastUpdate)
SELECT          '_DSP'                  AS EntityType,
                Id_Disponibilidad       AS EntityId,
                1                       AS FlagUpdated,
                0                       AS FlagMain,
                0                       AS FlagPrice,
                0                       AS FlagComments,
                0                       AS FlagRelated,
                SYSDATE                 AS LastUpdate
    FROM        Disponibilidades
    WHERE       Id_Esquema = 'PROD' AND
                Id_Disponibilidad NOT IN (
                    SELECT      EntityId
                        FROM    Stage0_Delta
                        WHERE   EntityType = '_DSP'
                )
    ORDER BY    Id_Disponibilidad;
COMMIT;

--
-- 3. mark the entries to be updated
--
UPDATE Stage0_Delta
    SET         FlagUpdated         = 1,
                LastUpdate          = SYSDATE
    WHERE       EntityType = '_DSP' AND
                EntityId IN (
                    SELECT          D.Id_Disponibilidad
                        FROM        Disponibilidades D
                        WHERE       D.Id_Esquema = 'PROD' AND
                                    D.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = '_DSP') AND
                                    D.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = '_DSP')
                );
COMMIT;

--
-- 4. external resources
--
-- nothing to do
--

--
-- 5. mark the range updated
--
UPDATE Stage0_DeltaControl
    SET         LastUpdateDate      = NewUpdateDate
    WHERE       EntityType = '_DSP';
COMMIT;

---------------------------------------------
---------------------------------------------
--
-- entity PROD
--
---------------------------------------------
---------------------------------------------

--
-- 1. figure out the to update range
--
UPDATE Stage0_DeltaControl
    SET         NewUpdateDate       = SYSDATE
    WHERE       EntityType = 'PROD';
COMMIT;

--
-- 2. add entries for the new records
--
INSERT INTO Stage0_Delta(EntityType, EntityId, FlagUpdated, FlagMain,
                        FlagPrice, FlagComments, FlagRelated, LastUpdate)
SELECT          'PROD'                  AS EntityType,
                Id_Articulo             AS EntityId,
                1                       AS FlagUpdated,
                0                       AS FlagMain,
                0                       AS FlagPrice,
                0                       AS FlagComments,
                0                       AS FlagRelated,
                SYSDATE                 AS LastUpdate
    FROM        Articulos
    WHERE       Id_Articulo NOT IN (
                    SELECT      EntityId
                        FROM    Stage0_Delta
                        WHERE   EntityType = 'PROD'
                )
    ORDER BY    Id_Articulo;
COMMIT;

--
-- 3.1 mark the DIRECT entries to be updated
--
UPDATE Stage0_Delta
    SET         FlagUpdated         = 1,
                LastUpdate          = SYSDATE
    WHERE       EntityType = 'PROD' AND
                EntityId IN (
                    --
                    -- Articulos (NO INDEX ON F_Modi)
                    --
                    SELECT          A.Id_Articulo
                        FROM        Articulos A
                        WHERE       A.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD') AND
                                    A.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD')
                    UNION ALL
                    --
                    -- Articulos_Textos (NO INDEX ON F_Modi)
                    --
                    SELECT          A.Id_Articulo
                        FROM        Articulos_Textos A
                        WHERE       A.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD') AND
                                    A.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD')
                    UNION ALL
                    --
                    -- Articulos_Auditorio (NO INDEX ON F_Modi)
                    --
                    SELECT          A.Id_Articulo
                        FROM        Articulos_Auditorio A
                        WHERE       A.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD') AND
                                    A.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD')
                    UNION ALL
                    --
                    -- Articulos_ISBN (NO INDEX ON F_Modi)
                    --
                    SELECT          A.Id_Articulo
                        FROM        Articulos_ISBN A
                        WHERE       A.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD') AND
                                    A.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD')
                    UNION ALL
                    --
                    -- Articulos_Autores (NO INDEX ON F_Modi)
                    --
                    SELECT          A.Id_Articulo
                        FROM        Articulos_Autores A
                        WHERE       A.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD') AND
                                    A.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD')
                    UNION ALL
                    --
                    -- Articulos_Autores_Biografia (NO INDEX ON F_Modi)
                    --
                    SELECT          A.Id_Articulo
                        FROM        Articulos_Autores_Biografia A
                        WHERE       A.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD') AND
                                    A.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD')
                    UNION ALL
                    --
                    -- Articulos_Temas_Musicales (NO INDEX ON F_Modi)
                    --
                    SELECT          A.Id_Articulo
                        FROM        Articulos_Temas_Musicales A
                        WHERE       A.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD') AND
                                    A.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD')
                    UNION ALL
                    --
                    -- Temas_Mus_Autores
                    --
                    SELECT          A.Id_Articulo
                        FROM        Temas_Mus_Autores A
                        WHERE       A.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD') AND
                                    A.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD')
                    --
                    -- Comentario_Articulos
                    --
                    SELECT          A.Id_Articulo
                        FROM        Comentario_Articulos A
                        WHERE       A.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD') AND
                                    A.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD')
                    --
                    -- Tipos_Articulos
                    --
                    -- NOTE: this is indirect for changes on Tipos_Articulos
                    --       and then the Id_Articulo for those Tipos_Articulos
                    --
                    SELECT          A.Id_Articulo
                        FROM        Articulos A
                        WHERE       A.Id_Tipo_Articulo IN (
                                        SELECT      TA.Id_Tipo_Articulo
                                            FROM    Tipos_Articulos TA
                                            WHERE   TA.F_Modi >= (SELECT    DC.LastUpdateDate
                                                                    FROM    Stage0_DeltaControl DC
                                                                    WHERE   DC.EntityType = 'PROD') AND
                                                    TA.F_Modi <  (SELECT    DC.NewUpdateDate
                                                                    FROM    Stage0_DeltaControl DC
                                                                    WHERE   DC.EntityType = 'PROD')
                                    )
/*
 * THIS IS DONE WITH A TRIGGER BECAUSE
 * THE TABLE RCO_Articulos_Relacionados
 * DOES NOT HAVE AN INDEX ON F_MODI
 *
 * TODO - update existing trigger
 *
                    UNION ALL
                    --
                    -- RCO_Articulos_Relacionados
                    --
                    SELECT          A.Id_Articulo
                        FROM        RCO_Articulos_Relacionados A
                        WHERE       A.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD') AND
                                    A.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD')
*/
                );
COMMIT;

--
-- 3.2 mark the INDIRECT entries to be updated
--
UPDATE Stage0_Delta
    SET         FlagUpdated         = 1,
                LastUpdate          = SYSDATE
    WHERE       EntityType = 'PROD' AND
                EntityId IN (
                    --
                    -- all PRODs with a _DSP that changed
                    --
                    SELECT          A.Id_Articulo
                        FROM        Articulos A
                        WHERE       A.Id_Disponibilidad IN (
                            SELECT          S0.EntityId
                                FROM        Stage0_Delta S0
                                WHERE       S0.EntityType = '_DSP' AND
                                            S0.FlagUpdated = 1
                            )
                    UNION ALL
                    --
                    -- all PRODs with a CONT that changed
                    --
                    SELECT          A.Id_Articulo
                        FROM        Articulos_Autores A
                        WHERE       A.Id_Autor IN (
                            SELECT          S0.EntityId
                                FROM        Stage0_Delta S0
                                WHERE       S0.EntityType = 'CONT' AND
                                            S0.FlagUpdated = 1
                            )
                    UNION ALL
                    --
                    -- all PRODs with a IMPR that changed
                    --
                    SELECT          A.Id_Articulo
                        FROM        Articulos A
                        WHERE       A.Id_Editor IN (
                            SELECT          S0.EntityId
                                FROM        Stage0_Delta S0
                                WHERE       S0.EntityType = 'IMPR' AND
                                            S0.FlagUpdated = 1
                            )
                    UNION ALL
                    --
                    -- all PRODs with a SUBJ that changed
                    --
                    -- NOTE: this is opened in 4 subqueries
                    --
                    SELECT          A.Id_Articulo
                        FROM        Stage0_Subjects S
                        INNER JOIN  Articulos A
                            ON      S.Categoria_Seccion     = A.Categoria_Seccion
                        WHERE       S.SubjectId IN (
                                        SELECT          S0.EntityId
                                            FROM        Stage0_Delta S0
                                            WHERE       S0.EntityType = 'SUBJ'  AND
                                                        S0.FlagUpdated = 1)     AND
                                    S.Subtype = 'Seccion'
                    UNION ALL
                    SELECT          A.Id_Articulo
                        FROM        Stage0_Subjects S
                        INNER JOIN  Articulos A
                            ON      S.Categoria_Seccion     = A.Categoria_Seccion AND
                                    S.Categoria_Grupo       = A.Categoria_Grupo
                        WHERE       S.SubjectId IN (
                                        SELECT          S0.EntityId
                                            FROM        Stage0_Delta S0
                                            WHERE       S0.EntityType = 'SUBJ'  AND
                                                        S0.FlagUpdated = 1)     AND
                                    S.Subtype = 'Grupo'
                    UNION ALL
                    SELECT          A.Id_Articulo
                        FROM        Stage0_Subjects S
                        INNER JOIN  Articulos A
                            ON      S.Categoria_Seccion     = A.Categoria_Seccion   AND
                                    S.Categoria_Grupo       = A.Categoria_Grupo     AND
                                    S.Categoria_Familia     = A.Categoria_Familia
                        WHERE       S.SubjectId IN (
                                        SELECT          S0.EntityId
                                            FROM        Stage0_Delta S0
                                            WHERE       S0.EntityType = 'SUBJ' AND
                                                        S0.FlagUpdated = 1) AND
                                    S.Subtype = 'Familia'
                    UNION ALL
                    SELECT          A.Id_Articulo
                        FROM        Stage0_Subjects S
                        INNER JOIN  Articulos A
                            ON      S.Categoria_Seccion     = A.Categoria_Seccion   AND
                                    S.Categoria_Grupo       = A.Categoria_Grupo     AND
                                    S.Categoria_Familia     = A.Categoria_Familia   AND
                                    S.Categoria_Subfamilia  = A.Categoria_Subfamilia
                        WHERE       S.SubjectId IN (
                                        SELECT          S0.EntityId
                                            FROM        Stage0_Delta S0
                                            WHERE       S0.EntityType = 'SUBJ' AND
                                                        S0.FlagUpdated = 1) AND
                                    S.Subtype = 'Subfamilia'
                );
COMMIT;

--
-- 4. external resources
--
-- TODO - check press notes
-- TODO - check interviews
-- TODO - check chapters
--

--
-- 5. mark the range updated
--
UPDATE Stage0_DeltaControl
    SET         LastUpdateDate      = NewUpdateDate
    WHERE       EntityType = 'PROD';
COMMIT;

---------------------------------------------
---------------------------------------------
--
-- entity PAGE
--
---------------------------------------------
---------------------------------------------

--
-- 1. figure out the to update range
--
UPDATE Stage0_DeltaControl
    SET         NewUpdateDate       = SYSDATE
    WHERE       EntityType = 'PAGE';
COMMIT;

--
-- 2. add entries for the new records
--
-- nothing to do (just one page, the home page)
--

--
-- 3.1 mark the page to regenerate if the showcase changed
--
-- TODO - create trigger for F_Modi on Articulos_Mesa_Recomendados
--
UPDATE Stage0_Delta
    SET         FlagUpdated         = 1,
                LastUpdate          = SYSDATE
    WHERE       EntityType = 'PAGE' AND
                EntityId = 1 AND
                EXISTS (SELECT      1
                            FROM    Articulos_Mesa_Recomendados M
                            WHERE   M.En_Filtro = 'UTM' AND
                                    M.Se_Muestra = 1 AND
                                    M.F_Modi >= (SELECT     DC.LastUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD') AND
                                    M.F_Modi <  (SELECT     DC.NewUpdateDate
                                                    FROM    Stage0_DeltaControl DC
                                                    WHERE   DC.EntityType = 'PROD')) > 0;
COMMIT;

--
-- 3.2 mark the page to regenerate if there is anything to recompute
--
UPDATE Stage0_Delta
    SET         FlagUpdated         = 1,
                LastUpdate          = SYSDATE
    WHERE       EntityType = 'PAGE' AND
                EntityId = 1 AND
                EXISTS (SELECT      1
                            FROM    Stage0_Delta D
                            WHERE   D.FlagUpdated = 1);
COMMIT;

--
-- 4. external resources
--
-- nothing to do
--

--
-- 5. mark the range updated
--
UPDATE Stage0_DeltaControl
    SET         LastUpdateDate      = NewUpdateDate
    WHERE       EntityType = 'PAGE';
COMMIT;
