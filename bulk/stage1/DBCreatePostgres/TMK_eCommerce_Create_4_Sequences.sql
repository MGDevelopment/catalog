/****************************************************************
 *
 * create sequences
 *
 ****************************************************************/

/*
 * Product Control
 */
CREATE SEQUENCE Origins_OriginId_SEQ                    MINVALUE 1 MAXVALUE 2147483647;
CREATE SEQUENCE Products_ProductId_SEQ                  MINVALUE 1 MAXVALUE 2147483647;

/*
 * BLOCK 1 - Product Features
 */
CREATE SEQUENCE Contributors_ContributorId_SEQ          MINVALUE 1 MAXVALUE 2147483647;
CREATE SEQUENCE Subjects_SubjectId_SEQ                  MINVALUE 1 MAXVALUE 2147483647;
CREATE SEQUENCE Collections_CollectionId_SEQ            MINVALUE 1 MAXVALUE 2147483647;

/*
 * BLOCK 2 - Supporting Text and Resources
 */
CREATE SEQUENCE EntityTexts_EntryId_SEQ                 MINVALUE 1 MAXVALUE 2147483647;
CREATE SEQUENCE EntityResources_EntryId_SEQ             MINVALUE 1 MAXVALUE 2147483647;

/*
 * BLOCK 4 - Publisher
 */
CREATE SEQUENCE Publishers_PublisherId_SEQ              MINVALUE 1 MAXVALUE 2147483647;
CREATE SEQUENCE Imprints_ImprintId_SEQ                  MINVALUE 1 MAXVALUE 2147483647;

/*
 * Entity Extras
 */
CREATE SEQUENCE EntityRatings_RatingId_SEQ              MINVALUE 1 MAXVALUE 2147483647;

/*
 * Users
 */
CREATE SEQUENCE Users_UserId_SEQ                        MINVALUE 1 MAXVALUE 2147483647;
CREATE SEQUENCE UserCredentials_CredentialId_SEQ        MINVALUE 1 MAXVALUE 2147483647;

/*
 * Pages
 */
CREATE SEQUENCE Pages_PageId_SEQ                        MINVALUE 1 MAXVALUE 2147483647;

/*
 * Publishing
 */
CREATE SEQUENCE URLs_URLId_SEQ                          MINVALUE 1 MAXVALUE 2147483647;
CREATE SEQUENCE URLPatterns_PatternId_SEQ               MINVALUE 1 MAXVALUE 2147483647;

/*
 * Content
 */
CREATE SEQUENCE Designs_DesignId_SEQ                    MINVALUE 1 MAXVALUE 2147483647;
CREATE SEQUENCE Stores_StoreId_SEQ                      MINVALUE 1 MAXVALUE 2147483647;
CREATE SEQUENCE DesignDocuments_DocumentId_SEQ          MINVALUE 1 MAXVALUE 2147483647;

/*
 * Code Tables
 */
CREATE SEQUENCE CodeTables_CodeTableId_SEQ              MINVALUE 1 MAXVALUE 2147483647;
CREATE SEQUENCE IdentifierTypes_IdentifierTypeId_SEQ    MINVALUE 1 MAXVALUE 2147483647;
