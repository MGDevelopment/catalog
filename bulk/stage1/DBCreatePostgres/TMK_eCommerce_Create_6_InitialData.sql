/*********************************************************************************
 *
 * data for Product Control
 *
 *********************************************************************************/

--
-- InterchangeTypes
--
INSERT INTO InterchangeTypes(InterchangeType, Name, Description, FlagEnabled)
    VALUES('ONIX', 'Onix 3.0', 'Onix 3.0 File', true);

--
-- MessageStatus
--
INSERT INTO MessageStatus(TypeInterchange, MessageStatus, Name, Description, FlagEnabled)
    VALUES('ONIX', 'PE', 'Pending',     'The file has been received but not yet processed',     true);
INSERT INTO MessageStatus(TypeInterchange, MessageStatus, Name, Description, FlagEnabled)
    VALUES('ONIX', 'PR', 'Processed',   'The file has been received and processed',             true);
INSERT INTO MessageStatus(TypeInterchange, MessageStatus, Name, Description, FlagEnabled)
    VALUES('ONIX', 'ER', 'Error',       'The file has been processed with errors',              true);
INSERT INTO MessageStatus(TypeInterchange, MessageStatus, Name, Description, FlagEnabled)
    VALUES('ONIX', 'CA', 'Canceled',    'The file has been canceled (will not be processed)',   true);

--
-- Origins
--
INSERT INTO Origins(OriginId, Name, Description, InterchangeType, InterchangeCode, InterchangeUser, InterchangePassword,
                    FlagSender, FlagReceiver, FlagFulfillment, FlagEnabled)
    VALUES(nextval('Origins_OriginId_SEQ'), 'ILHSA', 'ILHSA ONIX updater', 'ONIX', 'ilhsa.com', NULL, NULL,
            true, false, true, true);

--
-- OriginMessages
--
INSERT INTO OriginMessages(OriginId, IdMessage, TypeInterchange, MessageStatus, Note,
                            MessageDate, ReceiveDate, StatusDate, FileName)
    VALUES(1, 0, 'ONIX', 'PR', NULL, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL);

/*********************************************************************************
 *
 * data for Pages (static pages)
 *
 *********************************************************************************/

--
-- Pages
--
INSERT INTO Pages(PageId, Name, Description,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('Pages_PageId_SEQ'), 'Home Page', NULL,
            false, CURRENT_TIMESTAMP, NULL, NULL);

--
-- PageURLs
--
INSERT INTO PageURLs(PageId, EntryOrder, URL, FlagPrimaryURL,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
SELECT          PageId                  AS PageId,
                0                       AS EntryOrder,
                '/'                     AS URL,
                true                    AS FlagPrimaryURL,
                true                    AS FlagDeleted,
                CURRENT_TIMESTAMP       AS CreationDate,
                NULL                    AS LastUpdateDate,
                NULL                    AS DeletionDate
    FROM    Pages
    WHERE   Name = 'Home Page';
INSERT INTO PageURLs(PageId, EntryOrder, URL, FlagPrimaryURL,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
SELECT          PageId                  AS PageId,
                1                       AS EntryOrder,
                '/index.jsp'            AS URL,
                true                    AS FlagPrimaryURL,
                true                    AS FlagDeleted,
                CURRENT_TIMESTAMP       AS CreationDate,
                NULL                    AS LastUpdateDate,
                NULL                    AS DeletionDate
    FROM    Pages
    WHERE   Name = 'Home Page';

/*********************************************************************************
 *
 * data for Publishing
 *
 *********************************************************************************/

--
-- URLPatterns
--
INSERT INTO URLPatterns(PatternId, Name, PatternType, Description, LinkPattern,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('URLPatterns_PatternId_SEQ'),    'Migrated',         '??', 'Formato Libre para la migración',
                    '{URL}',
            true, CURRENT_TIMESTAMP, NULL, CURRENT_TIMESTAMP);
INSERT INTO URLPatterns(PatternId, Name, PatternType, Description, LinkPattern,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('URLPatterns_PatternId_SEQ'),    'Pages',            '??', 'Páginas estáticas',
                    '{URL}',
            false, CURRENT_TIMESTAMP, NULL, NULL);
INSERT INTO URLPatterns(PatternId, Name, PatternType, Description, LinkPattern,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('URLPatterns_PatternId_SEQ'),    'Subjects',         '??', 'Páginas de Categorías (nueva)',
                    '/{Title}/Categoria',
            false, CURRENT_TIMESTAMP, NULL, NULL);
INSERT INTO URLPatterns(PatternId, Name, PatternType, Description, LinkPattern,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('URLPatterns_PatternId_SEQ'),    'Imprint',          '??', 'Páginas de Imprint',
                    '/{Name}/Editora',
            false, CURRENT_TIMESTAMP, NULL, NULL);
INSERT INTO URLPatterns(PatternId, Name, PatternType, Description, LinkPattern,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('URLPatterns_PatternId_SEQ'),    'Publisher',        '??', 'Páginas de Editoriales',
                    '/{Name}/Editorial',
            false, CURRENT_TIMESTAMP, NULL, NULL);
INSERT INTO URLPatterns(PatternId, Name, PatternType, Description, LinkPattern,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('URLPatterns_PatternId_SEQ'),    'Collection',       '??', 'Páginas de Colecciones y temas (nueva)',
                    '/{Title}',
            false, CURRENT_TIMESTAMP, NULL, NULL);
INSERT INTO URLPatterns(PatternId, Name, PatternType, Description, LinkPattern,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('URLPatterns_PatternId_SEQ'),    'Contributor',      '??', 'Páginas de Autores, Actores, Directores, etc',
                    '/{Title}/Autor',
            false, CURRENT_TIMESTAMP, NULL, NULL);
INSERT INTO URLPatterns(PatternId, Name, PatternType, Description, LinkPattern,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('URLPatterns_PatternId_SEQ'),    'Product.Book',     '??', 'Páginas de Libros',
                    '/{Title}/Libros',
            false, CURRENT_TIMESTAMP, NULL, NULL);
INSERT INTO URLPatterns(PatternId, Name, PatternType, Description, LinkPattern,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('URLPatterns_PatternId_SEQ'),    'Product.DVD',      '??', 'Páginas de DVD',
                    '/{Title}/DVD',
            false, CURRENT_TIMESTAMP, NULL, NULL);
INSERT INTO URLPatterns(PatternId, Name, PatternType, Description, LinkPattern,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('URLPatterns_PatternId_SEQ'),    'Product.CD',       '??', 'Páginas de CD',
                    '/{Title}/CD',
            false, CURRENT_TIMESTAMP, NULL, NULL);
INSERT INTO URLPatterns(PatternId, Name, PatternType, Description, LinkPattern,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('URLPatterns_PatternId_SEQ'),    'Product.Juego',    '??', 'Páginas de Juego',
                    '/{Title}/Pasatiempos',
            false, CURRENT_TIMESTAMP, NULL, NULL);

--
-- EntityTypes
--
INSERT INTO EntityTypes(EntityType, TableSchema, TableName, IdField, Name, Description, DescriptionPattern,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES('PROD', 'eCommerce', 'Products',     'ProductId',     'Products',
            'Productos', 'Product {ProductId} - {Title}',
            false, CURRENT_TIMESTAMP, NULL, NULL);
INSERT INTO EntityTypes(EntityType, TableSchema, TableName, IdField, Name, Description, DescriptionPattern,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES('CONT', 'eCommerce', 'Contributors', 'ContributorId', 'Contributors',
            'Autores, Actores, Directores, etc', 'Contributor {ContributorId} - {Name}',
            false, CURRENT_TIMESTAMP, NULL, NULL);
INSERT INTO EntityTypes(EntityType, TableSchema, TableName, IdField, Name, Description, DescriptionPattern,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES('COLL', 'eCommerce', 'Collections',  'CollectionId',  'Collections',
            'Colecciones', 'Collection {CollectionId} - {Title}',
            false, CURRENT_TIMESTAMP, NULL, NULL);
INSERT INTO EntityTypes(EntityType, TableSchema, TableName, IdField, Name, Description, DescriptionPattern,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES('PUBL', 'eCommerce', 'Publishers',   'PublisherId',   'Publishers',
            'Editoriales (ej: Disney)', 'Publisher {PublisherId} - {Name}',
            false, CURRENT_TIMESTAMP, NULL, NULL);
INSERT INTO EntityTypes(EntityType, TableSchema, TableName, IdField, Name, Description, DescriptionPattern,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES('IMPR', 'eCommerce', 'Imprints',     'ImprintId',     'Imprints',
            'Marcas de una editorial (ej: Disney, Pixar)', 'Imprint {ImprintId} - {Name}',
            false, CURRENT_TIMESTAMP, NULL, NULL);
INSERT INTO EntityTypes(EntityType, TableSchema, TableName, IdField, Name, Description, DescriptionPattern,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES('SUBJ', 'eCommerce', 'Subjects',     'SubjectId',     'Subjects',
            'Categorías', 'Subject {SubjectId} - {Title}',
            false, CURRENT_TIMESTAMP, NULL, NULL);
INSERT INTO EntityTypes(EntityType, TableSchema, TableName, IdField, Name, Description, DescriptionPattern,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES('PAGE', 'eCommerce', 'Pages',        'PageId',        'Pages',
            'Páginas estáticas (incluyendo la home page)', 'Page {PageId} - {URL}',
            false, CURRENT_TIMESTAMP, NULL, NULL);

--
-- EntityTypeURLPatterns
--
INSERT INTO EntityTypeURLPatterns(EntityType, PatternId, FlagPrimary)
SELECT      CASE Name
                WHEN 'Pages'            THEN 'PAGE'
                WHEN 'Subjects'         THEN 'SUBJ'
                WHEN 'Imprint'          THEN 'IMPR'
                WHEN 'Publisher'        THEN 'PUBL'
                WHEN 'Collection'       THEN 'COLL'
                WHEN 'Contributor'      THEN 'CONT'
                WHEN 'Product.Book'     THEN 'PROD'
                WHEN 'Product.DVD'      THEN 'PROD'
                WHEN 'Product.CD'       THEN 'PROD'
                WHEN 'Product.Juego'    THEN 'PROD'
            END AS EntityType,
            PatternId, true
    FROM    URLPatterns
    WHERE   Name <> 'Migrated';

--
-- EntityTypeURLPatternSelectors
--
-- valid comparison operators are: EQ, NE, LT, LE, GT, GE
-- valid list operators are: IL (In List), NL (Not in List)
--
--
INSERT INTO EntityTypeURLPatternSelectors(EntityType, PatternId, SelectorPath, SelectorOperator, SelectorValue, FlagDeleted)
SELECT          ETUP.EntityType, ETUP.PatternId, '/PrimaryContentType',
                CASE U.Name
                    WHEN 'Product.Book'     THEN 'EQ'
                    WHEN 'Product.DVD'      THEN 'EQ'
                    WHEN 'Product.CD'       THEN 'EQ'
                    WHEN 'Product.Juego'    THEN 'NL'
                END         AS SelectorOperator,
                CASE U.Name
                    WHEN 'Product.Book'     THEN '10'
                    WHEN 'Product.DVD'      THEN '06'
                    WHEN 'Product.CD'       THEN '03'
                    WHEN 'Product.Juego'    THEN '03,06,10'
                END         AS SelectorValue,
                false       AS FlagDeleted
    FROM        EntityTypeURLPatterns ETUP
    INNER JOIN  URLPatterns U
        ON      ETUP.PatternId = U.PatternId
    WHERE       ETUP.EntityType = 'PROD';

--
-- Designs
--
INSERT INTO Designs(DesignId, Name, Version, DesignStatus, PercentageOnline, AWSBucket,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('Designs_DesignId_SEQ'), 'clasic', 1, 'PU', 100.0, 'tmk-clasic-1.amazonaws.com',
            false, CURRENT_TIMESTAMP, NULL, NULL);

/*********************************************************************************
 *
 * manual code tables
 *
 *********************************************************************************/

--
-- CodeTablesRegion
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription, FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '49', 'Regions', true, false,
           'CodeTablesRegion', 'eCommerce', 'CodeValue', 'Name',
           false, CURRENT_TIMESTAMP, NULL, NULL);

INSERT INTO CodeTablesRegion(CodeValue, FlagONIXNative, Name, Description)
    VALUES('ECZ', true, 'Eurozone', 'Countries geographically within continental Europe which use the Euro as their sole currency. At the time of writing, this is a synonym for "AT BE CY EE FI FR DE ES GR IE IT LU MT NL PT SI SK" (the official Eurozone 17), plus "AD MC SM VA ME" (other Euro-using countries in continental Europe). Note some other territories using the Euro, but outside continental Europe are excluded from this list, and may need to be specified separately. Only valid in ONIX 3, and only within Block 6.');
INSERT INTO CodeTablesRegion(CodeValue, FlagONIXNative, Name, Description)
    VALUES('ROW', true, 'Rest of world', 'World except as otherwise specified. NOT USED in ONIX 3.');
INSERT INTO CodeTablesRegion(CodeValue, FlagONIXNative, Name, Description)
    VALUES('WORLD', true, 'World', NULL);

--
-- Auth - CredentialType
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription, FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'Auth', 'CredentialType',
           'Types of Credential for login into the system',
           false, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'EM', false, 'EMail', 'Email account used for login'
    FROM CodeTables
    WHERE TableDomain = 'Auth' AND TableName = 'CredentialType';

--
-- User - CommentStatus
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription, FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'User', 'User',
           'Possible status of a User Comment',
           false, true, 'CodeTablesONIX30Char1', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A', false, 'Aprovado', 'El comentario fue aprovado'
    FROM CodeTables
    WHERE TableDomain = 'User' AND TableName = 'User';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'R', false, 'Rechazado', 'El comentario fue rechazado'
    FROM CodeTables
    WHERE TableDomain = 'User' AND TableName = 'User';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P', false, 'Pendiente', 'El comentario está Pendiente de revisión'
    FROM CodeTables
    WHERE TableDomain = 'User' AND TableName = 'User';
