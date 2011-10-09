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
            END                 AS EntityType,
            PatternId           AS PatternId,
            true                AS FlagPrimary
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


/*********************************************************************************
 *
 * data for content
 *
 *********************************************************************************/

--
-- Stores
--
INSERT INTO Stores(StoreId, Name, DefaultMarketCountriesIncluded, DefaultMarketRegionsIncluded,
                    DefaultCurrencyCode, ArbitrationCurrencyCode, DefautCountryCode,
                    DefaultLanguageCode, StoreStaticFilesPath, HashedId,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('Stores_StoreId_SEQ'), 'Tematika', NULL, 'WORLD', 'ARS', 'ARS', 'AR', 'es',
            'tmk-static-html:/stores/Tematika', 'Ga0FQ0kiSQj',
            false, CURRENT_TIMESTAMP, NULL, NULL);

--
-- StoreDomains
--
INSERT INTO StoreDomains(StoreId, DomainName, ContentDomainName, StaticDomainName,
                    PaymentDomainName, SecureDomainName, DynamicDomainName,
                    SearchDomainName, FlagPrimary)
SELECT      StoreId                     AS StoreId,
            'tematika.com'              AS DomainName,
            'www.tematika.com'          AS ContentDomainName,
            'estatico.tematika.com'     AS StaticDomainName,
            'seguro.tematika.com'       AS PaymentDomainName,
            'seguro.tematika.com'       AS SecureDomainName,
            'servicios.tematika.com'    AS DynamicDomainName,
            'buscador.tematika.com'     AS SearchDomainName,
            true                        AS FlagPrimary
    FROM    Stores
    WHERE   Name = 'Tematika';

--
-- Designs
--
INSERT INTO Designs(DesignId, DesignName, DesignVersion, DesignStatus,
                    DesignStaticFilesPath, HashedId,
                    FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('Designs_DesignId_SEQ'), 'Clasico', 1, 'PU',
            'tmk-static-html:/designs/Clasico_v1', '4XcTVwU8Qv9',
            false, CURRENT_TIMESTAMP, NULL, NULL);

--
-- StoreDesigns
--
INSERT INTO StoreDesigns(StoreId, DesignId, InheritsFromStoreId, InheritsFromDesignId,
                    HashedId, PercentageOnline)
SELECT      S.StoreId                   AS StoreId,
            D.DesignId                  AS DesignId,
            NULL                        AS InheritsFromStoreId,
            NULL                        AS InheritsFromDesignId,
            '9WQjmQ_wz3k'               AS HashedId,
            100.00                      AS PercentageOnline
    FROM    Stores S, Designs D;

--
-- StoreDesignRepositories
--
INSERT INTO StoreDesignRepositories(StoreId, DesignId, LogicalName, AWSBucket)
SELECT      S.StoreId                   AS StoreId,
            -1                          AS DesignId,
            'static'                    AS LogicalName,
            'tmk-store-' || S.HashedId  AS AWSBucket
    FROM    Stores S;
INSERT INTO StoreDesignRepositories(StoreId, DesignId, LogicalName, AWSBucket)
SELECT      SD.StoreId                  AS StoreId,
            SD.DesignId                 AS DesignId,
            'content'                   AS LogicalName,
            'tmk-ds-' || SD.HashedId    AS AWSBucket
    FROM    StoreDesigns SD;

--
-- DesignURLGenerators --- see bellow for more (non-templated URLs)
--
------ HOME PAGE
INSERT INTO DesignURLGenerators(DesignId, GeneratorName, URLName, URLPattern)
SELECT      D.DesignId                      AS DesignId,
            'HomePage'                      AS GeneratorName,
            'canonnical'                    AS URLName,
            '{{cannonical}}'                AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'HomePage'                      AS GeneratorName,
            'urls'                          AS URLName,
            '{{url}}'                       AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'HomePage'                      AS GeneratorName,
            'exchangeRates'                 AS URLName,
            '/exchangeRates.json'           AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'HomePage'                      AS GeneratorName,
            'comments'                      AS URLName,
            '/comments.json'                AS URLPattern
    FROM    Designs D;
------ PRODUCT
INSERT INTO DesignURLGenerators(DesignId, GeneratorName, URLName, URLPattern)
SELECT      D.DesignId                      AS DesignId,
            'Product'                       AS GeneratorName,
            'canonnical'                    AS URLName,
            '{{cannonical}}'                AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Product'                       AS GeneratorName,
            'urls'                          AS URLName,
            '{{url}}'                       AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Product'                       AS GeneratorName,
            'price'                         AS URLName,
            '{{cannonical}}-price.json'     AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Product'                       AS GeneratorName,
            'comments'                      AS URLName,
            '{{cannonical}}-comments-{{page}}.json'
                                            AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Product'                       AS GeneratorName,
            'relatedProducts'               AS URLName,
            '{{cannonical}}-related.json'   AS URLPattern
    FROM    Designs D;
------ SUBJECT
INSERT INTO DesignURLGenerators(DesignId, GeneratorName, URLName, URLPattern)
SELECT      D.DesignId                      AS DesignId,
            'Subject'                       AS GeneratorName,
            'canonnical'                    AS URLName,
            '{{cannonical}}'                AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Subject'                       AS GeneratorName,
            'urls'                          AS URLName,
            '{{url}}'                       AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Subject'                       AS GeneratorName,
            'pagingSalesRanking'            AS URLName,
            '{{cannonical}}-sales-{{page}}.json'
                                            AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Subject'                       AS GeneratorName,
            'pagingDateAsc'                 AS URLName,
            '{{cannonical}}-dateAsc-{{page}}.json'
                                            AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Subject'                       AS GeneratorName,
            'pagingDateDesc'                AS URLName,
            '{{cannonical}}-dateDesc-{{page}}.json'
                                            AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Subject'                       AS GeneratorName,
            'pagingPriceAsc'                AS URLName,
            '{{cannonical}}-priceAsc-{{page}}.json'
                                            AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Subject'                       AS GeneratorName,
            'pagingPriceDesc'               AS URLName,
            '{{cannonical}}-priceDesc-{{page}}.json'
                                            AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Subject'                       AS GeneratorName,
            'pagingTitleAsc'                AS URLName,
            '{{cannonical}}-titleAsc-{{page}}.json'
                                            AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Subject'                       AS GeneratorName,
            'pagingTitleDesc'               AS URLName,
            '{{cannonical}}-titleDesc-{{page}}.json'
                                            AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Subject'                       AS GeneratorName,
            'comments'                      AS URLName,
            '{{cannonical}}-comments.json'  AS URLPattern
    FROM    Designs D;
------ CONTRIBUTOR
INSERT INTO DesignURLGenerators(DesignId, GeneratorName, URLName, URLPattern)
SELECT      D.DesignId                      AS DesignId,
            'Contributor'                   AS GeneratorName,
            'canonnical'                    AS URLName,
            '{{cannonical}}'                AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Contributor'                   AS GeneratorName,
            'urls'                          AS URLName,
            '{{url}}'                       AS URLPattern
    FROM    Designs D;
------ IMPRINT
INSERT INTO DesignURLGenerators(DesignId, GeneratorName, URLName, URLPattern)
SELECT      D.DesignId                      AS DesignId,
            'Imprint'                       AS GeneratorName,
            'canonnical'                    AS URLName,
            '{{cannonical}}'                AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Imprint'                       AS GeneratorName,
            'urls'                          AS URLName,
            '{{url}}'                       AS URLPattern
    FROM    Designs D;
------ PUBLISHER
INSERT INTO DesignURLGenerators(DesignId, GeneratorName, URLName, URLPattern)
SELECT      D.DesignId                      AS DesignId,
            'Publisher'                     AS GeneratorName,
            'canonnical'                    AS URLName,
            '{{cannonical}}'                AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Publisher'                     AS GeneratorName,
            'urls'                          AS URLName,
            '{{url}}'                       AS URLPattern
    FROM    Designs D;
------ COLLECTION
INSERT INTO DesignURLGenerators(DesignId, GeneratorName, URLName, URLPattern)
SELECT      D.DesignId                      AS DesignId,
            'Collection'                    AS GeneratorName,
            'canonnical'                    AS URLName,
            '{{cannonical}}'                AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Collection'                    AS GeneratorName,
            'urls'                          AS URLName,
            '{{url}}'                       AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Collection'                    AS GeneratorName,
            'pagingSalesRanking'            AS URLName,
            '{{cannonical}}-sales-{{page}}.json'
                                            AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Collection'                    AS GeneratorName,
            'pagingDateAsc'                 AS URLName,
            '{{cannonical}}-dateAsc-{{page}}.json'
                                            AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Collection'                    AS GeneratorName,
            'pagingDateDesc'                AS URLName,
            '{{cannonical}}-dateDesc-{{page}}.json'
                                            AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Collection'                    AS GeneratorName,
            'pagingPriceAsc'                AS URLName,
            '{{cannonical}}-priceAsc-{{page}}.json'
                                            AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Collection'                    AS GeneratorName,
            'pagingPriceDesc'               AS URLName,
            '{{cannonical}}-priceDesc-{{page}}.json'
                                            AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Collection'                    AS GeneratorName,
            'pagingTitleAsc'                AS URLName,
            '{{cannonical}}-titleAsc-{{page}}.json'
                                            AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Collection'                    AS GeneratorName,
            'pagingTitleDesc'               AS URLName,
            '{{cannonical}}-titleDesc-{{page}}.json'
                                            AS URLPattern
    FROM    Designs D;

--
-- DesignDocuments
--
------ HOME PAGE
INSERT INTO DesignDocuments(DesignId, EntityType, EntityId, DocumentId, DocumentName,
                URLGeneratorName, URLName, DataViewName, TemplateName, RepositoryName,
                TagList, FlagPaginated)
SELECT  DUG.DesignId                    AS DesignId,
        'PAGE'                          AS EntityType,
        P.PageId                        AS EntityId,
        nextval('DesignDocuments_DocumentId_SEQ')
                                        AS DocumentId,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'Home Page Cannonical'
            WHEN 'urls' THEN                'Home Page Alternate'
            WHEN 'exchangeRates' THEN       'Exchange Rates'
            WHEN 'comments' THEN            'Home Page Comments'
        END                             AS DocumentName,
        DUG.GeneratorName               AS URLGeneratorName,
        DUG.URLName                     AS URLName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'HomePageMain'
            WHEN 'urls' THEN                'HomePageMain'
            WHEN 'exchangeRates' THEN       'ExchangeRates'
            WHEN 'comments' THEN            'HomePageComments'
        END                             AS DataViewName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'HomePageCannonical'
            WHEN 'urls' THEN                'HomePageAlternate'
            WHEN 'exchangeRates' THEN       'ExchangeRates'
            WHEN 'comments' THEN            'HomePageComments'
        END                             AS TemplateName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'content'
            WHEN 'urls' THEN                'content'
            WHEN 'exchangeRates' THEN       'static'
            WHEN 'comments' THEN            'static'
        END                             AS RepositoryName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'content,all'
            WHEN 'urls' THEN                'content,all'
            WHEN 'exchangeRates' THEN       'exchangeRates,all'
            WHEN 'comments' THEN            'content,comments,all'
        END                             AS TagList,
        CASE
            WHEN POSITION('{{page}}' IN DUG.URLPattern) > 0 THEN
                                            true
            ELSE                            false
        END                             AS FlagPaginated
    FROM    DesignURLGenerators DUG, Pages P
    WHERE   P.Name = 'Home Page' AND
            DUG.GeneratorName = 'HomePage';
------ PRODUCT
INSERT INTO DesignDocuments(DesignId, EntityType, EntityId, DocumentId, DocumentName,
                URLGeneratorName, URLName, DataViewName, TemplateName, RepositoryName,
                TagList, FlagPaginated)
SELECT  DUG.DesignId                    AS DesignId,
        'PROD'                          AS EntityType,
        -1                              AS EntityId,
        nextval('DesignDocuments_DocumentId_SEQ')
                                        AS DocumentId,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'Product Cannonical'
            WHEN 'urls' THEN                'Product Alternate'
            WHEN 'price' THEN               'Product Price'
            WHEN 'comments' THEN            'Product Comments'
            WHEN 'relatedProducts' THEN     'Product Related Products'
        END                             AS DocumentName,
        DUG.GeneratorName               AS URLGeneratorName,
        DUG.URLName                     AS URLName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'ProductMain'
            WHEN 'urls' THEN                'ProductMain'
            WHEN 'price' THEN               'ProductMain'
            WHEN 'comments' THEN            'ProductComments'
            WHEN 'relatedProducts' THEN     'ProductRelated'
        END                             AS DataViewName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'ProductCannonical'
            WHEN 'urls' THEN                'ProductAlternate'
            WHEN 'price' THEN               'ProductPrice'
            WHEN 'comments' THEN            'ProductComments'
            WHEN 'relatedProducts' THEN     'ProductRelated'
        END                             AS TemplateName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'content'
            WHEN 'urls' THEN                'content'
            WHEN 'price' THEN               'static'
            WHEN 'comments' THEN            'static'
            WHEN 'relatedProducts' THEN     'static'
        END                             AS RepositoryName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'content,price,all'
            WHEN 'urls' THEN                'content,price,all'
            WHEN 'price' THEN               'price,all'
            WHEN 'comments' THEN            'comments,all'
            WHEN 'relatedProducts' THEN     'related,all'
        END                             AS TagList,
        CASE
            WHEN POSITION('{{page}}' IN DUG.URLPattern) > 0 THEN
                                            true
            ELSE                            false
        END                             AS FlagPaginated
    FROM    DesignURLGenerators DUG
    WHERE   DUG.GeneratorName = 'Product';
------ SUBJECT
INSERT INTO DesignDocuments(DesignId, EntityType, EntityId, DocumentId, DocumentName,
                URLGeneratorName, URLName, DataViewName, TemplateName, RepositoryName,
                TagList, FlagPaginated)
SELECT  DUG.DesignId                    AS DesignId,
        'SUBJ'                          AS EntityType,
        -1                              AS EntityId,
        nextval('DesignDocuments_DocumentId_SEQ')
                                        AS DocumentId,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'Subject Cannonical'
            WHEN 'urls' THEN                'Subject Alternate'
            WHEN 'pagingSalesRanking' THEN  'Subject Sales Ranking List'
            WHEN 'pagingDateAsc' THEN       'Subject Date Asc List'
            WHEN 'pagingDateDesc' THEN      'Subject Date Desc List'
            WHEN 'pagingPriceAsc' THEN      'Subject Price Asc List'
            WHEN 'pagingPriceDesc' THEN     'Subject Price Desc List'
            WHEN 'pagingTitleAsc' THEN      'Subject Title Asc List'
            WHEN 'pagingTitleDesc' THEN     'Subject Title Desc List'
            WHEN 'comments' THEN            'Subject Comments'
        END                             AS DocumentName,
        DUG.GeneratorName               AS URLGeneratorName,
        DUG.URLName                     AS URLName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'SubjectMain'
            WHEN 'urls' THEN                'SubjectMain'
            WHEN 'pagingSalesRanking' THEN  'SubjectListSalesRanking'
            WHEN 'pagingDateAsc' THEN       'SubjectListDateAsc'
            WHEN 'pagingDateDesc' THEN      'SubjectListDateDesc'
            WHEN 'pagingPriceAsc' THEN      'SubjectListPriceAsc'
            WHEN 'pagingPriceDesc' THEN     'SubjectListPriceDesc'
            WHEN 'pagingTitleAsc' THEN      'SubjectListTitleAsc'
            WHEN 'pagingTitleDesc' THEN     'SubjectListTitleDesc'
            WHEN 'comments' THEN            'SubjectComments'
        END                             AS DataViewName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'SubjectCannonical'
            WHEN 'urls' THEN                'SubjectAlternate'
            WHEN 'pagingSalesRanking' THEN  'SubjectListPaging'
            WHEN 'pagingDateAsc' THEN       'SubjectListPaging'
            WHEN 'pagingDateDesc' THEN      'SubjectListPaging'
            WHEN 'pagingPriceAsc' THEN      'SubjectListPaging'
            WHEN 'pagingPriceDesc' THEN     'SubjectListPaging'
            WHEN 'pagingTitleAsc' THEN      'SubjectListPaging'
            WHEN 'pagingTitleDesc' THEN     'SubjectListPaging'
            WHEN 'comments' THEN            'SubjectComments'
        END                             AS TemplateName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'content'
            WHEN 'urls' THEN                'content'
            WHEN 'pagingSalesRanking' THEN  'static'
            WHEN 'pagingDateAsc' THEN       'static'
            WHEN 'pagingDateDesc' THEN      'static'
            WHEN 'pagingPriceAsc' THEN      'static'
            WHEN 'pagingPriceDesc' THEN     'static'
            WHEN 'pagingTitleAsc' THEN      'static'
            WHEN 'pagingTitleDesc' THEN     'static'
            WHEN 'comments' THEN            'static'
        END                             AS RepositoryName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'content,all'
            WHEN 'urls' THEN                'content,all'
            WHEN 'pagingSalesRanking' THEN  'content,all'
            WHEN 'pagingDateAsc' THEN       'content,all'
            WHEN 'pagingDateDesc' THEN      'content,all'
            WHEN 'pagingPriceAsc' THEN      'content,all'
            WHEN 'pagingPriceDesc' THEN     'content,all'
            WHEN 'pagingTitleAsc' THEN      'content,all'
            WHEN 'pagingTitleDesc' THEN     'content,all'
            WHEN 'comments' THEN            'comments,all'
        END                             AS TagList,
        CASE
            WHEN POSITION('{{page}}' IN DUG.URLPattern) > 0 THEN
                                            true
            ELSE                            false
        END                             AS FlagPaginated
    FROM    DesignURLGenerators DUG
    WHERE   DUG.GeneratorName = 'Subject';
------ CONTRIBUTOR
INSERT INTO DesignDocuments(DesignId, EntityType, EntityId, DocumentId, DocumentName,
                URLGeneratorName, URLName, DataViewName, TemplateName, RepositoryName,
                TagList, FlagPaginated)
SELECT  DUG.DesignId                    AS DesignId,
        'CONT'                          AS EntityType,
        -1                              AS EntityId,
        nextval('DesignDocuments_DocumentId_SEQ')
                                        AS DocumentId,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'Contributor Cannonical'
            WHEN 'urls' THEN                'Contributor Alternate'
        END                             AS DocumentName,
        DUG.GeneratorName               AS URLGeneratorName,
        DUG.URLName                     AS URLName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'ContributorMain'
            WHEN 'urls' THEN                'ContributorMain'
        END                             AS DataViewName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'ContributorCannonical'
            WHEN 'urls' THEN                'ContributorAlternate'
        END                             AS TemplateName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'content'
            WHEN 'urls' THEN                'content'
        END                             AS RepositoryName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'content,all'
            WHEN 'urls' THEN                'content,all'
        END                             AS TagList,
        CASE
            WHEN POSITION('{{page}}' IN DUG.URLPattern) > 0 THEN
                                            true
            ELSE                            false
        END                             AS FlagPaginated
    FROM    DesignURLGenerators DUG
    WHERE   DUG.GeneratorName = 'Contributor';
------ IMPRINT
INSERT INTO DesignDocuments(DesignId, EntityType, EntityId, DocumentId, DocumentName,
                URLGeneratorName, URLName, DataViewName, TemplateName, RepositoryName,
                TagList, FlagPaginated)
SELECT  DUG.DesignId                    AS DesignId,
        'IMPR'                          AS EntityType,
        -1                              AS EntityId,
        nextval('DesignDocuments_DocumentId_SEQ')
                                        AS DocumentId,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'Contributor Cannonical'
            WHEN 'urls' THEN                'Contributor Alternate'
        END                             AS DocumentName,
        DUG.GeneratorName               AS URLGeneratorName,
        DUG.URLName                     AS URLName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'ContributorMain'
            WHEN 'urls' THEN                'ContributorMain'
        END                             AS DataViewName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'ContributorCannonical'
            WHEN 'urls' THEN                'ContributorAlternate'
        END                             AS TemplateName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'content'
            WHEN 'urls' THEN                'content'
        END                             AS RepositoryName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'content,all'
            WHEN 'urls' THEN                'content,all'
        END                             AS TagList,
        CASE
            WHEN POSITION('{{page}}' IN DUG.URLPattern) > 0 THEN
                                            true
            ELSE                            false
        END                             AS FlagPaginated
    FROM    DesignURLGenerators DUG
    WHERE   DUG.GeneratorName = 'Imprint';
------ PUBLISHER
INSERT INTO DesignDocuments(DesignId, EntityType, EntityId, DocumentId, DocumentName,
                URLGeneratorName, URLName, DataViewName, TemplateName, RepositoryName,
                TagList, FlagPaginated)
SELECT  DUG.DesignId                    AS DesignId,
        'PUBL'                          AS EntityType,
        -1                              AS EntityId,
        nextval('DesignDocuments_DocumentId_SEQ')
                                        AS DocumentId,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'Contributor Cannonical'
            WHEN 'urls' THEN                'Contributor Alternate'
        END                             AS DocumentName,
        DUG.GeneratorName               AS URLGeneratorName,
        DUG.URLName                     AS URLName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'ContributorMain'
            WHEN 'urls' THEN                'ContributorMain'
        END                             AS DataViewName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'ContributorCannonical'
            WHEN 'urls' THEN                'ContributorAlternate'
        END                             AS TemplateName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'content'
            WHEN 'urls' THEN                'content'
        END                             AS RepositoryName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'content,all'
            WHEN 'urls' THEN                'content,all'
        END                             AS TagList,
        CASE
            WHEN POSITION('{{page}}' IN DUG.URLPattern) > 0 THEN
                                            true
            ELSE                            false
        END                             AS FlagPaginated
    FROM    DesignURLGenerators DUG
    WHERE   DUG.GeneratorName = 'Publisher';
------ COLLECTION
INSERT INTO DesignDocuments(DesignId, EntityType, EntityId, DocumentId, DocumentName,
                URLGeneratorName, URLName, DataViewName, TemplateName, RepositoryName,
                TagList, FlagPaginated)
SELECT  DUG.DesignId                    AS DesignId,
        'COLL'                          AS EntityType,
        -1                              AS EntityId,
        nextval('DesignDocuments_DocumentId_SEQ')
                                        AS DocumentId,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'Collection Cannonical'
            WHEN 'urls' THEN                'Collection Alternate'
            WHEN 'pagingSalesRanking' THEN  'Collection Sales Ranking List'
            WHEN 'pagingDateAsc' THEN       'Collection Date Asc List'
            WHEN 'pagingDateDesc' THEN      'Collection Date Desc List'
            WHEN 'pagingPriceAsc' THEN      'Collection Price Asc List'
            WHEN 'pagingPriceDesc' THEN     'Collection Price Desc List'
            WHEN 'pagingTitleAsc' THEN      'Collection Title Asc List'
            WHEN 'pagingTitleDesc' THEN     'Collection Title Desc List'
        END                             AS DocumentName,
        DUG.GeneratorName               AS URLGeneratorName,
        DUG.URLName                     AS URLName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'CollectionMain'
            WHEN 'urls' THEN                'CollectionMain'
            WHEN 'pagingSalesRanking' THEN  'CollectionListSalesRanking'
            WHEN 'pagingDateAsc' THEN       'CollectionListDateAsc'
            WHEN 'pagingDateDesc' THEN      'CollectionListDateDesc'
            WHEN 'pagingPriceAsc' THEN      'CollectionListPriceAsc'
            WHEN 'pagingPriceDesc' THEN     'CollectionListPriceDesc'
            WHEN 'pagingTitleAsc' THEN      'CollectionListTitleAsc'
            WHEN 'pagingTitleDesc' THEN     'CollectionListTitleDesc'
        END                             AS DataViewName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'CollectionCannonical'
            WHEN 'urls' THEN                'CollectionAlternate'
            WHEN 'pagingSalesRanking' THEN  'CollectionListPaging'
            WHEN 'pagingDateAsc' THEN       'CollectionListPaging'
            WHEN 'pagingDateDesc' THEN      'CollectionListPaging'
            WHEN 'pagingPriceAsc' THEN      'CollectionListPaging'
            WHEN 'pagingPriceDesc' THEN     'CollectionListPaging'
            WHEN 'pagingTitleAsc' THEN      'CollectionListPaging'
            WHEN 'pagingTitleDesc' THEN     'CollectionListPaging'
        END                             AS TemplateName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'content'
            WHEN 'urls' THEN                'content'
            WHEN 'pagingSalesRanking' THEN  'static'
            WHEN 'pagingDateAsc' THEN       'static'
            WHEN 'pagingDateDesc' THEN      'static'
            WHEN 'pagingPriceAsc' THEN      'static'
            WHEN 'pagingPriceDesc' THEN     'static'
            WHEN 'pagingTitleAsc' THEN      'static'
            WHEN 'pagingTitleDesc' THEN     'static'
        END                             AS RepositoryName,
        CASE DUG.URLName
            WHEN 'canonnical' THEN          'content,all'
            WHEN 'urls' THEN                'content,all'
            WHEN 'pagingSalesRanking' THEN  'content,all'
            WHEN 'pagingDateAsc' THEN       'content,all'
            WHEN 'pagingDateDesc' THEN      'content,all'
            WHEN 'pagingPriceAsc' THEN      'content,all'
            WHEN 'pagingPriceDesc' THEN     'content,all'
            WHEN 'pagingTitleAsc' THEN      'content,all'
            WHEN 'pagingTitleDesc' THEN     'content,all'
        END                             AS TagList,
        CASE
            WHEN POSITION('{{page}}' IN DUG.URLPattern) > 0 THEN
                                            true
            ELSE                            false
        END                             AS FlagPaginated
    FROM    DesignURLGenerators DUG
    WHERE   DUG.GeneratorName = 'Collection';

--
-- DesignDocumentHeaders
--
-- CACHE .json or .js for 1 hour
INSERT INTO DesignDocumentHeaders(DesignId, EntityType, EntityId, DocumentId,
                                    HeaderName, HeaderValue)
SELECT      DD.DesignId             AS DesignId,
            DD.EntityType           AS EntityType,
            DD.EntityId             AS EntityId,
            DD.DocumentId           AS DocumentId,
            'Cache-Control'         AS HeaderName,
            'max-age=3600'          AS HeaderValue
    FROM        DesignDocuments DD
    INNER JOIN  DesignURLGenerators DUG
        ON      DD.DesignId         = DUG.DesignId      AND
                DD.URLGeneratorName = DUG.GeneratorName AND
                DD.URLName          = DUG.URLName       AND
                (   DUG.URLPattern LIKE '%.json' OR
                    DUG.URLPattern LIKE '%.js');

--
-- DesignURLGenerators ---- EXTRA URLs NON TEMPLATED
--
------ PRODUCT
INSERT INTO DesignURLGenerators(DesignId, GeneratorName, URLName, URLPattern)
SELECT      D.DesignId                      AS DesignId,
            'Product'                       AS GeneratorName,
            'coverSmall'                    AS URLName,
            '{{cannonical}}-small'          AS URLPattern
    FROM    Designs D
UNION
SELECT      D.DesignId                      AS DesignId,
            'Product'                       AS GeneratorName,
            'coverLarge'                    AS URLName,
            '{{cannonical}}-large'          AS URLPattern
    FROM    Designs D;

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
    VALUES('LATAM', true, 'Latino-América', 'Países de América del Sur y América Central');
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
