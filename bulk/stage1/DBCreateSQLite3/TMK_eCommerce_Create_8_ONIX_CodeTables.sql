/*
 *
 * FILE GENERATED FROM THE HTML ONIX LISTS - DO NOT EDIT
 *
 */

--
-- 1 - Notification or update type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '1', 'Notification or update type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Early notification', 'Use for a complete record issued earlier than approximately six months before publication.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '1';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Advance notification (confirmed)', 'Use for a complete record issued to confirm advance information approximately six months before publication; or for a complete record issued after that date and before information has been confirmed from the book-in-hand.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '1';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Notification confirmed on publication', 'Use for a complete record issued to confirm advance information at or just before actual publication date; or for a complete record issued at any later date.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '1';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Update (partial)', 'In ONIX 3.0, use when sending a ''block update'' record. In previous ONIX releases, ONIX updating has generally been by complete record replacement using code 03, and code 04 is not used.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '1';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Delete', 'Use when sending an instruction to delete a record which was previously issued. Note that a Delete instruction should NOT be used when a product is cancelled, put out of print, or otherwise withdrawn from sale: this should be handled as a change of Publishing status, leaving the receiver to decide whether to retain or delete the record. A Delete instruction is only used when there is a particular reason to withdraw a record completely, eg because it was issued in error.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '1';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Notice of sale', 'Notice of sale of a product, from one publisher to another: sent by the publisher disposing of the product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '1';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Notice of acquisition', 'Notice of acquisition of a product, by one publisher from another: sent by the acquiring publisher'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '1';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Update - SupplyDetail only', 'ONIX Books 2.1 supply update - SupplyDetail only (not used in ONIX 3.0)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '1';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Update - MarketRepresentation only', 'ONIX Books 2.1 supply update - MarketRepresentation only (not used in ONIX 3.0)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '1';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'Update - SupplyDetail and MarketRepresentation', 'ONIX Books 2.1 supply update - both SupplyDetail and MarketRepresentation (not used in ONIX 3.0)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '1';
--
-- 2 - Product composition
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '2', 'Product composition',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Single-item retail product', 'Single-item retail product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '2';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Multiple-item retail product', 'Multiple-item product retailed as a whole'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '2';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Multiple-item collection, retailed as separate parts', 'Used when an ONIX record is required for a collection-as-a-whole, even though it is not currently retailed as such'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '2';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '20', true, 'Trade-only product', 'Product not for retail, and not carrying retail items, eg empty dumpbin, empty counterpack, promotional material'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '2';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '30', true, 'Multiple-item trade pack', 'Carrying multiple copies for retailing as separate items, eg shrink-wrapped trade pack, filled dumpbin, filled counterpack'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '2';
--
-- 3 - Record source type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '3', 'Record source type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Unspecified', 'Unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '3';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Publisher', 'Publisher'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '3';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Publisher''s distributor', 'Use to designate a distributor providing warehousing and fulfilment for a publisher or for a publisher''s sales agent, as distinct from a wholesaler'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '3';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Wholesaler', 'Wholesaler'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '3';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Bibliographic agency', 'Bibliographic agency'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '3';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Library bookseller', 'Library bookseller'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '3';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Publisher''s sales agent', 'Use for a publisher''s sales agent responsible for marketing the publisher''s products within a territory, as opposed to a publisher''s distributor who fulfils orders but does not market'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '3';
--
-- 5 - Product identifier type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '5', 'Product identifier type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Proprietary', 'For example, a publisher''s or wholesaler''s product number.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '5';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'ISBN-10', 'International Standard Book Number, pre-2007, unhyphenated (10 characters) - now DEPRECATED in ONIX for Books'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '5';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'GTIN-13', 'GS1 Global Trade Item Number, formerly known as EAN article number (13 digits)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '5';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'UPC', 'UPC product number (12 digits)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '5';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'ISMN-10', 'International Standard Music Number (M plus nine digits). Pre-2008 - now DEPRECATED in ONIX for Books'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '5';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'DOI', 'Digital Object Identifier (variable length and character set)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '5';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'LCCN', 'Library of Congress Control Number (12 characters, alphanumeric)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '5';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'GTIN-14', 'GS1 Global Trade Item Number (14 digits)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '5';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'ISBN-13', 'International Standard Book Number, from 2007, unhyphenated (13 digits)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '5';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'Legal deposit number', 'The number assigned to a publication as part of a national legal deposit process'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '5';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '22', true, 'URN', 'Uniform Resource Name: note that in trade applications an ISBN must be sent as a GTIN-13 and, where required, as an ISBN-13 - it should not be sent as a URN'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '5';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '23', true, 'OCLC number', 'A unique number assigned to a bibliographic item by OCLC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '5';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '24', true, 'Co-publisher''s ISBN-13', 'An ISBN-13 assigned by a co-publisher. The ''main'' ISBN sent with ID type code 03 and/or 15 should always be the ISBN that is used for ordering from the supplier identified in Supply Detail. However, ISBN rules allow a co-published title to carry more than one ISBN. The co-publisher should be identified in an instance of the <Publisher> composite, with the applicable <PublishingRole> code.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '5';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '25', true, 'ISMN-13', 'International Standard Music Number (13-digit number starting 9790..., from 2008)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '5';
--
-- 6 - Barcode indicator
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '6', 'Barcode indicator',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Not barcoded', 'Not barcoded'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Barcoded, scheme unspecified', 'Barcoded, scheme unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'EAN13', 'Position unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'EAN13+5 (US dollar price encoded)', 'Position unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'UPC12', 'Type and position unspecified. DEPRECATED: if possible, use more specific values below.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'UPC12+5', 'Type and position unspecified. DEPRECATED: if possible, use more specific values below.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'UPC12 (item-specific)', 'AKA item/price: position unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'UPC12+5 (item-specific)', 'AKA item/price: position unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'UPC12 (price-point)', 'AKA price/item: position unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'UPC12+5 (price-point)', 'AKA price/item: position unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'EAN13 on cover 4', '''Cover 4'' is defined as the back cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'EAN13+5 on cover 4 (US dollar price encoded)', '''Cover 4'' is defined as the back cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'UPC12 (item-specific) on cover 4', 'AKA item/price; ''cover 4'' is defined as the back cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'UPC12+5 (item-specific) on cover 4', 'AKA item/price; ''cover 4'' is defined as the back cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'UPC12 (price-point) on cover 4', 'AKA price/item; ''cover 4'' is defined as the back cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'UPC12+5 (price-point) on cover 4', 'AKA price/item; ''cover 4'' is defined as the back cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '16', true, 'EAN13 on cover 3', '''Cover 3'' is defined as the inside back cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'EAN13+5 on cover 3 (US dollar price encoded)', '''Cover 3'' is defined as the inside back cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'UPC12 (item-specific) on cover 3', 'AKA item/price; ''cover 3'' is defined as the inside back cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '19', true, 'UPC12+5 (item-specific) on cover 3', 'AKA item/price; ''cover 3'' is defined as the inside back cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '20', true, 'UPC12 (price-point) on cover 3', 'AKA price/item; ''cover 3'' is defined as the inside back cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '21', true, 'UPC12+5 (price-point) on cover 3', 'AKA price/item; ''cover 3'' is defined as the inside back cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '22', true, 'EAN13 on cover 2', '''Cover 2'' is defined as the inside front cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '23', true, 'EAN13+5 on cover 2 (US dollar price encoded)', '''Cover 2'' is defined as the inside front cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '24', true, 'UPC12 (item-specific) on cover 2', 'AKA item/price; ''cover 2'' is defined as the inside front cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '25', true, 'UPC12+5 (item-specific) on cover 2', 'AKA item/price; ''cover 2'' is defined as the inside front cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '26', true, 'UPC12 (price-point) on cover 2', 'AKA price/item; ''cover 2'' is defined as the inside front cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '27', true, 'UPC12+5 (price-point) on cover 2', 'AKA price/item; ''cover 2'' is defined as the inside front cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '28', true, 'EAN13 on box', 'To be used only on boxed products'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '29', true, 'EAN13+5 on box (US dollar price encoded)', 'To be used only on boxed products'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '30', true, 'UPC12 (item-specific) on box', 'AKA item/price; to be used only on boxed products'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '31', true, 'UPC12+5 (item-specific) on box', 'AKA item/price; to be used only on boxed products'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '32', true, 'UPC12 (price-point) on box', 'AKA price/item; to be used only on boxed products'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '33', true, 'UPC12+5 (price-point) on box', 'AKA price/item; to be used only on boxed products'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '34', true, 'EAN13 on tag', 'To be used only on products fitted with hanging tags'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '35', true, 'EAN13+5 on tag (US dollar price encoded)', 'To be used only on products fitted with hanging tags'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '36', true, 'UPC12 (item-specific) on tag', 'AKA item/price; to be used only on products fitted with hanging tags'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '37', true, 'UPC12+5 (item-specific) on tag', 'AKA item/price; to be used only on products fitted with hanging tags'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '38', true, 'UPC12 (price-point) on tag', 'AKA price/item; to be used only on products fitted with hanging tags'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '39', true, 'UPC12+5 (price-point) on tag', 'AKA price/item; to be used only on products fitted with hanging tags'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '40', true, 'EAN13 on bottom', 'Not be used on books unless they are contained within outer packaging'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '41', true, 'EAN13+5 on bottom (US dollar price encoded)', 'Not be used on books unless they are contained within outer packaging'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '42', true, 'UPC12 (item-specific) on bottom', 'AKA item/price; not be used on books unless they are contained within outer packaging'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '43', true, 'UPC12+5 (item-specific) on bottom', 'AKA item/price; not be used on books unless they are contained within outer packaging'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '44', true, 'UPC12 (price-point) on bottom', 'AKA price/item; not be used on books unless they are contained within outer packaging'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '45', true, 'UPC12+5 (price-point) on bottom', 'AKA price/item; not be used on books unless they are contained within outer packaging'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '46', true, 'EAN13 on back', 'Not be used on books unless they are contained within outer packaging'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '47', true, 'EAN13+5 on back (US dollar price encoded)', 'Not be used on books unless they are contained within outer packaging'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '48', true, 'UPC12 (item-specific) on back', 'AKA item/price; not be used on books unless they are contained within outer packaging'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '49', true, 'UPC12+5 (item-specific) on back', 'AKA item/price; not be used on books unless they are contained within outer packaging'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '50', true, 'UPC12 (price-point) on back', 'AKA price/item; not be used on books unless they are contained within outer packaging'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '51', true, 'UPC12+5 (price-point) on back', 'AKA price/item; not be used on books unless they are contained within outer packaging'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '52', true, 'EAN13+5 on outer sleeve/back (US dollar price encoded)', 'To be used only on products packaged in outer sleeves'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '53', true, 'EAN13+5 on outer sleeve/back', 'To be used only on products packaged in outer sleeves'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '54', true, 'UPC12 (item-specific) on outer sleeve/back', 'AKA item/price; to be used only on products packaged in outer sleeves'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '55', true, 'UPC12+5 (item-specific) on outer sleeve/back', 'AKA item/price; to be used only on products packaged in outer sleeves'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '56', true, 'UPC12 (price-point) on outer sleeve/back', 'AKA price/item; to be used only on products packaged in outer sleeves'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '57', true, 'UPC12+5 (price-point) on outer sleeve/back', 'AKA price/item; to be used only on products packaged in outer sleeves'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '58', true, 'EAN13+5 (no price encoded)', 'Position unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '59', true, 'EAN13+5 on cover 4 (no price encoded)', '''Cover 4'' is defined as the back cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '60', true, 'EAN13+5 on cover 3 (no price encoded)', '''Cover 3'' is defined as the inside back cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '61', true, 'EAN13+5 on cover 2 (no price encoded)', '''Cover 2'' is defined as the inside front cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '62', true, 'EAN13+5 on box (no price encoded)', 'To be used only on boxed products'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '63', true, 'EAN13+5 on tag (no price encoded)', 'To be used only on products fitted with hanging tags'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '64', true, 'EAN13+5 on bottom (no price encoded)', 'Not be used on books unless they are contained within outer packaging'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '65', true, 'EAN13+5 on back (no price encoded)', 'Not be used on books unless they are contained within outer packaging'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '66', true, 'EAN13+5 on outer sleeve/back (no price encoded)', 'To be used only on products packaged in outer sleeves'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '67', true, 'EAN13+5 (CAN dollar price encoded)', 'Position unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '68', true, 'EAN13+5 on cover 4 (CAN dollar price encoded)', '''Cover 4'' is defined as the back cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '69', true, 'EAN13+5 on cover 3 (CAN dollar price encoded)', '''Cover 3'' is defined as the inside back cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '70', true, 'EAN13+5 on cover 2 (CAN dollar price encoded)', '''Cover 2'' is defined as the inside front cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '71', true, 'EAN13+5 on box (CAN dollar price encoded)', 'To be used only on boxed products'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '72', true, 'EAN13+5 on tag (CAN dollar price encoded)', 'To be used only on products fitted with hanging tags'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '73', true, 'EAN13+5 on bottom (CAN dollar price encoded)', 'Not be used on books unless they are contained within outer packaging'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '74', true, 'EAN13+5 on back (CAN dollar price encoded)', 'Not be used on books unless they are contained within outer packaging'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '75', true, 'EAN13 on outer sleeve/back (CAN dollar price encoded)', 'To be used only on products packaged in outer sleeves'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '6';
--
-- 7 - Product form code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '7', 'Product form code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Undefined', 'Undefined'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AA', true, 'Audio', 'Audio recording - detail unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AB', true, 'Audio cassette', 'Audio cassette (analogue)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AC', true, 'CD-Audio', 'Audio compact disc, in any recording format: use coding in Product Form Detail to specify the format, if required'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AD', true, 'DAT', 'Digital audio tape cassette'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AE', true, 'Audio disc', 'Audio disc (excluding CD)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AF', true, 'Audio tape', 'Audio tape (reel tape)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AG', true, 'MiniDisc', 'Sony MiniDisc format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AH', true, 'CD-Extra', 'Audio compact disc with part CD-ROM content'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AI', true, 'DVD Audio', 'DVD Audio'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AJ', true, 'Downloadable audio file', 'Audio recording downloadable online'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AK', true, 'Pre-recorded digital audio player', 'For example, Playaway audiobook and player: use coding in Product Form Detail to specify the recording format, if required'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AL', true, 'Pre-recorded SD card', 'For example, Audiofy audiobook chip'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AZ', true, 'Other audio format', 'Other audio format not specified by AB to AK'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BA', true, 'Book', 'Book - detail unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BB', true, 'Hardback', 'Hardback or cased book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BC', true, 'Paperback / softback', 'Paperback or other softback book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BD', true, 'Loose-leaf', 'Loose-leaf book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BE', true, 'Spiral bound', 'Spiral, comb or coil bound book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BF', true, 'Pamphlet', 'Pamphlet or brochure, stapled; German ''geheftet'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BG', true, 'Leather / fine binding', 'Leather / fine binding'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BH', true, 'Board book', 'Child''s book with all pages printed on board'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BI', true, 'Rag book', 'Child''s book with all pages printed on textile'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BJ', true, 'Bath book', 'Child''s book printed on waterproof material'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BK', true, 'Novelty book', 'A book whose novelty consists wholly or partly in a format which cannot be described by any other available code - a ''conventional'' format code is always to be preferred; one or more Product Form Detail codes, eg from the B2nn group, should be used whenever possible to provide additional description.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BL', true, 'Slide bound', 'Slide bound book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BM', true, 'Big book', 'Extra-large format for teaching etc; this format and terminology may be specifically UK; required as a top-level differentiator'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BN', true, 'Part-work (fasc&iacute;culo)', 'A part-work issued with its own ISBN and intended to be collected and bound into a complete book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BO', true, 'Fold-out book or chart', 'Concertina-folded book or chart, designed to fold to pocket or regular page size: use for German ''Leporello'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BP', true, 'Foam book', 'A children''s book whose cover and pages are made of foam'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BZ', true, 'Other book format', 'Other book format or binding not specified by BB to BP'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CA', true, 'Sheet map', 'Sheet map - detail unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CB', true, 'Sheet map, folded', 'Sheet map, folded'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CC', true, 'Sheet map, flat', 'Sheet map, flat'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CD', true, 'Sheet map, rolled', 'See Code List 80 for ''rolled in tube'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CE', true, 'Globe', 'Globe or planisphere'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CZ', true, 'Other cartographic', 'Other cartographic format not specified by CB to CE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DA', true, 'Digital', 'Digital or multimedia (detail unspecified)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DB', true, 'CD-ROM', 'CD-ROM'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DC', true, 'CD-I', 'CD interactive'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DD', true, 'DVD', 'DEPRECATED - use VI for DVD video, AI for DVD audio, DI for DVD-ROM'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DE', true, 'Game cartridge', 'Game cartridge'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DF', true, 'Diskette', 'AKA ''floppy disc'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DG', true, 'Electronic book text', 'Electronic book text in proprietary or open standard format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DH', true, 'Online resource', 'An electronic database or other resource or service accessible through online networks'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DI', true, 'DVD-ROM', 'DVD-ROM'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DJ', true, 'Secure Digital (SD) Memory Card', 'Secure Digital (SD) Memory Card'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DK', true, 'Compact Flash Memory Card', 'Compact Flash Memory Card'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DL', true, 'Memory Stick Memory Card', 'Memory Stick Memory Card'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DM', true, 'USB Flash Drive', 'USB Flash Drive'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DN', true, 'Double-sided CD/DVD', 'Double-sided disc, one side Audio CD/CD-ROM, other side DVD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DZ', true, 'Other digital', 'Other digital or multimedia not specified by DB to DN'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FA', true, 'Film or transparency', 'Film or transparency - detail unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FB', true, 'Film', 'Continuous film or filmstrip: DEPRECATED - use FE or FF'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FC', true, 'Slides', 'Photographic transparencies mounted for projection'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FD', true, 'OHP transparencies', 'Transparencies for overhead projector'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FE', true, 'Filmstrip', 'Filmstrip'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FF', true, 'Film', 'Continuous movie film as opposed to filmstrip'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FZ', true, 'Other film or transparency format', 'Other film or transparency format not specified by FB to FF'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MA', true, 'Microform', 'Microform - detail unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MB', true, 'Microfiche', 'Microfiche'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MC', true, 'Microfilm', 'Roll microfilm'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MZ', true, 'Other microform', 'Other microform not specified by MB or MC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PA', true, 'Miscellaneous print', 'Miscellaneous printed material - detail unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PB', true, 'Address book', 'May use product form detail codes P201 to P204 to specify binding'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PC', true, 'Calendar', 'Calendar'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PD', true, 'Cards', 'Cards, flash cards (eg for teaching reading)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PE', true, 'Copymasters', 'Copymasters, photocopiable sheets'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PF', true, 'Diary', 'May use product form detail codes P201 to P204 to specify binding'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PG', true, 'Frieze', 'Frieze'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PH', true, 'Kit', 'Kit'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PI', true, 'Sheet music', 'Sheet music'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PJ', true, 'Postcard book or pack', 'Postcard book or pack'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PK', true, 'Poster', 'Poster for retail sale - see also XF'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PL', true, 'Record book', 'Record book (eg ''birthday book'', ''baby book''): may use product form detail codes P201 to P204 to specify binding'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PM', true, 'Wallet or folder', 'Wallet or folder (containing loose sheets etc): it is preferable to code the contents and treat ''wallet'' as packaging (List 80), but if this is not possible the product as a whole may be coded as a ''wallet'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PN', true, 'Pictures or photographs', 'Pictures or photographs'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PO', true, 'Wallchart', 'Wallchart'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PP', true, 'Stickers', 'Stickers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PQ', true, 'Plate (l&aacute;mina)', 'A book-sized (as opposed to poster-sized) sheet, usually in colour or high quality print'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PR', true, 'Notebook / blank book', 'A book with all pages blank for the buyer''s own use: may use product form detail codes P201 to P204 to specify binding'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PS', true, 'Organizer', 'May use product form detail codes P201 to P204 to specify binding'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PT', true, 'Bookmark', 'Bookmark'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PZ', true, 'Other printed item', 'Other printed item not specified by PB to PT'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VA', true, 'Video', 'Video - detail unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VB', true, 'Video, VHS, PAL', 'DEPRECATED - use new VJ'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VC', true, 'Video, VHS, NTSC', 'DEPRECATED - use new VJ'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VD', true, 'Video, Betamax, PAL', 'DEPRECATED - use new VK'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VE', true, 'Video, Betamax, NTSC', 'DEPRECATED - use new VK'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VF', true, 'Videodisc', 'eg Laserdisc'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VG', true, 'Video, VHS, SECAM', 'DEPRECATED - use new VJ'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VH', true, 'Video, Betamax, SECAM', 'DEPRECATED - use new VK'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VI', true, 'DVD video', 'DVD video: specify TV standard in List 78'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VJ', true, 'VHS video', 'VHS videotape: specify TV standard in List 78'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VK', true, 'Betamax video', 'Betamax videotape: specify TV standard in List 78'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VL', true, 'VCD', 'VideoCD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VM', true, 'SVCD', 'Super VideoCD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VN', true, 'HD DVD', 'High definition DVD disc, Toshiba HD DVD format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VO', true, 'Blu-ray', 'High definition DVD disc, Sony Blu-ray format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VP', true, 'UMD Video', 'Sony Universal Media disc'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VZ', true, 'Other video format', 'Other video format not specified by VB to VP'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'WW', true, 'Mixed media product', 'A product consisting of two or more items in different media, eg book and CD-ROM, book and toy etc'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'WX', true, 'Multiple copy pack', 'A product containing multiple copies of one or more items packaged together for retail sale, consisting of either (a) several copies of a single item (eg 6 copies of a graded reader), or (b) several copies of each of several items (eg 3 copies each of 3 different graded readers), or (c) several copies of one or more single items plus a single copy of one or more related items (eg 30 copies of a pupil''s textbook plus 1 of teacher''s text). NOT TO BE CONFUSED WITH: multi-volume sets, or sets containing a single copy of a number of different items (boxed, slip-cased or otherwise); items with several components of different physical forms (see WW); or packs intended for trade distribution only, where the contents are retailed separately (see XC, XE, XL).'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XA', true, 'Trade-only material', 'Trade-only material (unspecified)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XB', true, 'Dumpbin - empty', 'Dumpbin - empty'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XC', true, 'Dumpbin - filled', 'Dumpbin with contents'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XD', true, 'Counterpack - empty', 'Counterpack - empty'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XE', true, 'Counterpack - filled', 'Counterpack with contents'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XF', true, 'Poster, promotional', 'Promotional poster for display, not for sale - see also PK'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XG', true, 'Shelf strip', 'Shelf strip'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XH', true, 'Window piece', 'Promotional piece for shop window display'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XI', true, 'Streamer', 'Streamer'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XJ', true, 'Spinner', 'Spinner'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XK', true, 'Large book display', 'Large scale facsimile of book for promotional display'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XL', true, 'Shrink-wrapped pack', 'A quantity pack with its own product code, for trade supply only: the retail items it contains are intended for sale individually - see also WX. For products or product bundles supplied shrink-wrapped for retail sale, use the Product Form code of the contents plus code 21 from List 80.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XZ', true, 'Other point of sale', 'Other point of sale material not specified by XB to XL'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZA', true, 'General merchandise', 'General merchandise - unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZB', true, 'Doll', 'Doll'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZC', true, 'Soft toy', 'Soft or plush toy'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZD', true, 'Toy', 'Toy'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZE', true, 'Game', 'Board game, or other game (except computer game: see DE)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZF', true, 'T-shirt', 'T-shirt'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZZ', true, 'Other merchandise', 'Other merchandise not specified by ZB to ZF'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '7';
--
-- 8 - Book form detail
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '8', 'Book form detail',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'A-format paperback', 'DEPRECATED'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '8';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'B-format paperback', '''B'' format paperback: UK 198 x 129 mm - DEPRECATED'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '8';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'C-format paperback', '''C'' format paperback: UK 216 x 135 mm - DEPRECATED'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '8';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Paper over boards', 'DEPRECATED'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '8';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Cloth', 'DEPRECATED'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '8';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'With dust jacket', 'DEPRECATED'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '8';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Reinforced binding', 'DEPRECATED'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '8';
--
-- 9 - Product classification type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '9', 'Product classification type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'WCO Harmonized System', 'World Customs Organization Harmonized Commodity Coding and Description System'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '9';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'UNSPSC', 'UN Standard Product and Service Classification'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '9';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'HMRC', 'UK Revenue and Customs classifications, based on the Harmonized System'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '9';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Warenverzeichnis f&uuml;r die Au&szlig;enhandelsstatistik', 'German export trade classification, based on the Harmonised System'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '9';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'TARIC', 'EU TARIC codes, an extended version of the Harmonized System'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '9';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Fondsgroep', 'Centraal Boekhuis free classification field for publishers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '9';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Sender''s product category', 'A product category (not a subject classification) assigned by the sender'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '9';
--
-- 10 - Epublication type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '10', 'Epublication type code',
           true, true, 'CodeTablesONIX30Char3', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '000', true, 'Epublication ''content package''', 'An epublication viewed as a unique package of content which may be converted into any of a number of different types for delivery to the consumer. This code is used when an ONIX <Product> record describes the content package and lists within the record the different forms in which it is available.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '001', true, 'HTML', 'An epublication delivered in a basic, unprotected, HTML format. Do NOT use for HTML-based formats which include DRM protection.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '002', true, 'PDF', 'An epublication delivered in a basic, unprotected, PDF format. Do NOT use for PDF-based formats which include DRM protection.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '003', true, 'PDF-Merchant', 'An epublication delivered in PDF format, capable of being read in the standard Acrobat Reader, and protected by PDF-Merchant DRM features. (This format is no longer supported for new applications.)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '004', true, 'Adobe Ebook Reader', 'An epublication delivered in an enhanced PDF format, using Adobe''s proprietary EBX DRM, capable of being read in the Adobe Ebook Reader software, on any platform which can support this software, which was formerly known as Glassbook.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '005', true, 'Microsoft Reader Level 1/Level 3', 'An epublication delivered in an unencrypted Microsoft .LIT format, capable of being read in the Microsoft Reader software at any level, on any platform which can support this software. (Level 3 differs from Level 1 only in that it embeds the name of the original purchaser.)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '006', true, 'Microsoft Reader Level 5', 'An epublication delivered in the Microsoft .LIT format, with full encryption, capable of being read in the Microsoft Reader software at Level 5, on any platform which can support this software.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '007', true, 'NetLibrary', 'An epublication delivered in a proprietary HTML- or OEBF-based format, capable of being read only through subscription to the NetLibrary service.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '008', true, 'MetaText', 'An epublication delivered in a proprietary format through a web browser, capable of being read only through subscription to the MetaText service (the educational division of NetLibrary)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '009', true, 'MightyWords', 'An epublication delivered in a proprietary PDF-based format, capable of being read only through subscription to the MightyWords service.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '010', true, 'eReader (AKA Palm Reader)', 'An epublication delivered in a proprietary HTML-based format, capable of being read in reading software which may be used on handheld devices using the Palm OS or Pocket PC/Windows CE operating systems.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '011', true, 'Softbook', 'An epublication delivered in a proprietary format capable of being read in reading software which is specific to the Softbook hardware platform. Also capable of being read on the Softbook''s successor, the Gemstar REB 1200.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '012', true, 'RocketBook', 'An epublication delivered in a proprietary .RB format, capable of being read in reading software which is specific to the RocketBook hardware platform. Also capable of being read on the RocketBook''s successor, the Gemstar REB 1100.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '013', true, 'Gemstar REB 1100', 'An epublication delivered in a proprietary .RB format, capable of being read in reading software which is specific to the Gemstar REB 1100 hardware platform. Also capable of being read on the RocketBook with some loss of functionality.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '014', true, 'Gemstar REB 1200', 'An epublication delivered in a proprietary format, capable of being read in reading software which is specific to the Gemstar REB 1200 hardware platform. Also capable of being read on the Softbook with some loss of functionality.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '015', true, 'Franklin eBookman', 'An epublication delivered in Franklin''s proprietary HTML-based format, capable of being read in reading software which is specific to the Franklin eBookman platform.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '016', true, 'Books24x7', 'An epublication delivered in a proprietary XML-based format and available for online access only through subscription to the Books24x7 service.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '017', true, 'DigitalOwl', 'An epublication available through DigitalOwl proprietary packaging, distribution and DRM software, delivered in a variety of formats across a range of platforms.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '018', true, 'Handheldmed', 'An epublication delivered in a proprietary HTML-based format, capable of being read in Handheldmed reader software on Palm OS, Windows, and EPOC/Psion handheld devices, available only through the Handheldmed service.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '019', true, 'WizeUp', 'An epublication delivered in a proprietary ???-based format and available for download only through the WizeUp service.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '020', true, 'TK3', 'An epublication delivered in the proprietary TK3 format, capable of being read only in the TK3 reader software supplied by Night Kitchen Inc, on any platform which can support this software.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '021', true, 'Litraweb', 'An epublication delivered in an encrypted .RTF format, capable of being read only in the Litraweb Visor software, and available only from Litraweb.com.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '022', true, 'MobiPocket', 'An epublication delivered in a proprietary format, capable of being read in the MobiPocket software on PalmOS, WindowsCE /Pocket PC, Franklin eBookman, and EPOC32 handheld devices, available only through the MobiPocket service.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '023', true, 'Open Ebook', 'An epublication delivered in the standard distribution format specified in the Open Ebook Publication Structure (OEBPS) format and capable of being read in any OEBPS-compliant reading system.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '024', true, 'Town Compass DataViewer', 'An epublication delivered in a proprietary format, capable of being read in Town Compass DataViewer reader software on a Palm OS handheld device.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '025', true, 'TXT', 'An epublication delivered in an openly available .TXT format, with ASCII or UTF-8 encoding, as used for example in Project Gutenberg'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '026', true, 'ExeBook', 'An epublication delivered as a self-executing file including its own reader software, and created with proprietary ExeBook Self-Publisher software'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '027', true, 'Sony BBeB', 'An epublication in a Sony proprietary format for use with the Sony Reader and LIBRI&eacute; reading devices'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '028', true, 'VitalSource Bookshelf', 'VitalSource Bookshelf'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '029', true, 'EPUB', 'An epublication delivered using the Open Publication Structure / OPS Container Format standard of the International Digital Publishing Forum (IDPF). [This value was originally defined as ''Adobe Digital Editions'', which is not an epublication format but a reader which supports PDF or EPUB (IDPF) formats. Since PDF is already covered by code 002, it was agreed, and announced to the ONIX listserv in September 2009, that code 029 should be redefined to represent EPUB format.]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '030', true, 'MyiLibrary', 'MyiLibrary'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '031', true, 'Kindle', 'Kindle'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '032', true, 'Google Edition', 'An epublication made available by Google in association with a publisher; readable online on a browser-enabled device and offline on designated ebook readers.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '033', true, 'Vook', 'An epublication in a proprietary format combining text and video content and available to be used online or as a downloadable application for a mobile device - see www.vook.com'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '034', true, 'DXReader', 'An epublication in a proprietary format for use with DXReader software'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '035', true, 'EBL', 'An epublication in a format proprietary to the Ebook Library service'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '036', true, 'Ebrary', 'An epublication in a format proprietary to the Ebrary service'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '037', true, 'iSilo', 'An epublication in a proprietary format for use with iSilo software on various hardware platforms'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '038', true, 'Plucker', 'An epublication in a proprietary format for use with Plucker reader software on Palm and other handheld devices'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '039', true, 'VitalBook', 'A format proprietary to the VitalSource service'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '040', true, 'Book ''app'' for iOS', 'Epublication packaged as an application for iOS (eg Apple iPhone, iPad etc) containing both executable code and content. Content can be described with <ProductContentType>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '041', true, 'Android ''app''', 'Epublication packaged as an application for Android (eg Android phone or tablet) containing both executable code and content. Content can be described with <ProductContentType>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '042', true, 'Other ''app''', 'Epublication packaged as an application. Technical requirements such as target operating system and/or device should be provided in <EpubTypeNote>. Content can be described with <ProductContentType>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '043', true, 'XPS', 'XML Paper Specification format [File extension .xps] for (eg) Blio'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '098', true, 'Multiple formats', 'Product consists of parts in different formats'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '099', true, 'Unspecified', 'Unknown, or no code yet assigned for this format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '10';
--
-- 11 - Epublication format code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '11', 'Epublication format code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'HTML', 'HTML'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '11';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'PDF', 'PDF'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '11';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Microsoft Reader', '''.LIT'' file format used by Microsoft Reader software'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '11';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'RocketBook', 'RocketBook'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '11';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Rich text format (RTF)', 'Rich text format (RTF)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '11';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Open Ebook Publication Structure (OEBPS) format standard', 'Open Ebook Publication Structure (OEBPS) format standard'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '11';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'XML', 'XML'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '11';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'SGML', 'SGML'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '11';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'EXE', '''.EXE'' file format used when an epublication is delivered as a self-executing package of software and content.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '11';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'ASCII', '''.TXT'' file format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '11';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'MobiPocket format', 'Proprietary file format used for the MobiPocket reader software'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '11';
--
-- 12 - Trade category code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '12', 'Trade category code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'UK open market edition', 'An edition from a UK publisher sold only in territories where exclusive rights are not held. Rights details should be carried in PR.21 (ONIX 2.1) OR P.21 (ONIX 3.0) as usual.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '12';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Airport edition', 'In UK, an edition intended primarily for airside sales in UK airports, though it may be available for sale in other territories where exclusive rights are not held. Rights details should be carried in PR.21 (ONIX 2.1) OR P.21 (ONIX 3.0) as usual.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '12';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Sonderausgabe', 'In Germany, a special printing sold at a lower price than the regular hardback'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '12';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Pocket paperback', 'In countries where recognised as a distinct trade category, eg France ''livre de poche'', Germany ''Taschenbuch'', Italy ''tascabile'', Spain ''libro de bolsillo'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '12';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'International edition (US)', 'Edition produced solely for sale in designated export markets'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '12';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Library audio edition', 'Audio product sold in special durable packaging and with a replacement guarantee for the contained cassettes or CDs for a specified shelf-life'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '12';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'US open market edition', 'An edition from a US publisher sold only in territories where exclusive rights are not held. Rights details should be carried in PR.21 (ONIX 2.1) OR P.21 (ONIX 3.0) as usual.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '12';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Livre scolaire, d&eacute;clar&eacute; par l''&eacute;diteur', 'In France, a category of book that has a particular legal status, claimed by the publisher'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '12';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Livre scolaire (non sp&eacute;cifi&eacute;)', 'In France, a category of book that has a particular legal status, designated independently of the publisher'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '12';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Supplement to newspaper', 'Edition published for sale only with a newspaper or periodical'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '12';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Precio libre textbook', 'In Spain, a school textbook for which there is no fixed or suggested retail price and which is supplied by the publisher on terms individually agreed with the bookseller'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '12';
--
-- 13 - Series identifier type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '13', 'Series identifier type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Proprietary', 'For example, publisher''s own series ID'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '13';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'ISSN', 'International Standard Serial Number, unhyphenated, 8 digits'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '13';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'German National Bibliography series ID', 'Maintained by the Deutsche Bibliothek'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '13';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'German Books in Print series ID', 'Maintained by VLB'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '13';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Electre series ID', 'Maintained by Electre Information, France'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '13';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'DOI', 'Digital Object Identifier (variable length and character set)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '13';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '22', true, 'URN', 'Uniform Resource Name'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '13';
--
-- 14 - Text case flag
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '14', 'Text case flag',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Undefined', 'Default'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '14';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Sentence case', 'Initial capitals on first word and subsequently on proper names only, eg The conquest of Mexico'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '14';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Title case', 'Initial capitals on first word and on all significant words thereafter, eg The Conquest of Mexico'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '14';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'All capitals', 'For example, THE CONQUEST OF MEXICO'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '14';
--
-- 15 - Title type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '15', 'Title type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Undefined', 'Undefined'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '15';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Distinctive title (book); Cover title (serial); Title on item (serial content item or reviewed resource)', 'The full text of the distinctive title of the item, without abbreviation or abridgement. For books, where the title alone is not distinctive, elements may be taken from a set or series title and part number etc to create a distinctive title. Where the item is an omnibus edition containing two or more works by the same author, and there is no separate combined title, a distinctive title may be constructed by concatenating the individual titles, with suitable punctuation, as in Pride and prejudice / Sense and sensibility / Northanger Abbey.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '15';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'ISSN key title of serial', 'Serials only'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '15';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Title in original language', 'Where the subject of the ONIX record is a translated item'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '15';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Title acronym or initialism', 'For serials: an acronym or initialism of Title Type 01, eg JAMA, JACM'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '15';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Abbreviated title', 'An abbreviated form of Title Type 01'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '15';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Title in other language', 'A translation of Title Type 01 into another language'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '15';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Thematic title of journal issue', 'Serials only: when a journal issue is explicitly devoted to a specified topic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '15';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Former title', 'Books or serials: when an item was previously published under another title'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '15';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Distributor''s title', 'For books: the title carried in a book distributor''s title file: frequently incomplete, and may include elements not properly part of the title'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '15';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Alternative title on cover', 'An alternative title that appears on the cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '15';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Alternative title on back', 'An alternative title that appears on the back of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '15';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Expanded title', 'An expanded form of the title, eg the title of a school text book with grade and type and other details added to make the title meaningful, where otherwise it would comprise only the curriculum subject. This title type is required for submissions to the Spanish ISBN Agency.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '15';
--
-- 16 - Work identifier type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '16', 'Work identifier type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Proprietary', 'Proprietary'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '16';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'ISBN-10', '10-character ISBN of manifestation of work, when this is the only identifier available'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '16';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'DOI', 'Digital Object Identifier (variable length and character set)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '16';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'ISTC', 'International Standard Text Code (16 characters: numerals and letters A-F, unhyphenated)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '16';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'ISBN-13', '13-character ISBN of manifestation of work, when this is the only identifier available'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '16';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'ISRC', 'International Standard Recording Code'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '16';
--
-- 17 - Contributor role code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '17', 'Contributor role code',
           true, true, 'CodeTablesONIX30Char3', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A01', true, 'By (author)', 'Author of a textual work'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A02', true, 'With', 'With or as told to: ''ghost'' author of a literary work'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A03', true, 'Screenplay by', 'Writer of screenplay or script (film or video)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A04', true, 'Libretto by', 'Writer of libretto (opera): see also A31'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A05', true, 'Lyrics by', 'Author of lyrics (song): see also A31'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A06', true, 'By (composer)', 'Composer of music'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A07', true, 'By (artist)', 'Visual artist when named as the primary creator of, eg, a book of reproductions of artworks'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A08', true, 'By (photographer)', 'Photographer when named as the primary creator of, eg, a book of photographs)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A09', true, 'Created by', 'Created by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A10', true, 'From an idea by', 'From an idea by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A11', true, 'Designed by', 'Designed by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A12', true, 'Illustrated by', 'Artist when named as the creator of artwork which illustrates a text, or of the artwork of a graphic novel or comic book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A13', true, 'Photographs by', 'Photographer when named as the creator of photographs which illustrate a text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A14', true, 'Text by', 'Author of text which accompanies art reproductions or photographs, or which is part of a graphic novel or comic book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A15', true, 'Preface by', 'Author of preface'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A16', true, 'Prologue by', 'Author of prologue'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A17', true, 'Summary by', 'Author of summary'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A18', true, 'Supplement by', 'Author of supplement'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A19', true, 'Afterword by', 'Author of afterword'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A20', true, 'Notes by', 'Author of notes or annotations: see also A29'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A21', true, 'Commentaries by', 'Author of commentaries on the main text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A22', true, 'Epilogue by', 'Author of epilogue'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A23', true, 'Foreword by', 'Author of foreword'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A24', true, 'Introduction by', 'Author of introduction: see also A29'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A25', true, 'Footnotes by', 'Author/compiler of footnotes'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A26', true, 'Memoir by', 'Author of memoir accompanying main text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A27', true, 'Experiments by', 'Person who carried out experiments reported in the text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A29', true, 'Introduction and notes by', 'Author of introduction and notes: see also A20 and A24'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A30', true, 'Software written by', 'Writer of computer programs ancillary to the text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A31', true, 'Book and lyrics by', 'Author of the textual content of a musical drama: see also A04 and A05'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A32', true, 'Contributions by', 'Author of additional contributions to the text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A33', true, 'Appendix by', 'Author of appendix'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A34', true, 'Index by', 'Compiler of index'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A35', true, 'Drawings by', 'Drawings by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A36', true, 'Cover design or artwork by', 'Use also for the cover artist of a graphic novel or comic book if named separately'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A37', true, 'Preliminary work by', 'Responsible for preliminary work on which the work is based'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A38', true, 'Original author', 'Author of the first edition (usually of a standard work) who is not an author of the current edition'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A39', true, 'Maps by', 'Maps drawn or otherwise contributed by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A40', true, 'Inked or colored by', 'When separate persons are named as having respectively drawn and colored artwork, eg for a graphic novel or comic book, use A12 for ''drawn by'' and A40 for ''colored by'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A41', true, 'Pop-ups by', 'Designer of pop-ups in a pop-up book, who may be different from the illustrator'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A42', true, 'Continued by', 'Use where a standard work is being continued by somebody other than the original author'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A43', true, 'Interviewer', 'Interviewer'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A44', true, 'Interviewee', 'Interviewee'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A99', true, 'Other primary creator', 'Other type of primary creator not specified above'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B01', true, 'Edited by', 'Edited by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B02', true, 'Revised by', 'Revised by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B03', true, 'Retold by', 'Retold by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B04', true, 'Abridged by', 'Abridged by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B05', true, 'Adapted by', 'Adapted by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B06', true, 'Translated by', 'Translated by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B07', true, 'As told by', 'As told by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B08', true, 'Translated with commentary by', 'This code applies where a translator has provided a commentary on issues relating to the translation. If the translator has also provided a commentary on the work itself, codes B06 and A21 should be used.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B09', true, 'Series edited by', 'Name of a series editor when the product belongs to a series'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B10', true, 'Edited and translated by', 'Edited and translated by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B11', true, 'Editor-in-chief', 'Editor-in-chief'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B12', true, 'Guest editor', 'Guest editor'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B13', true, 'Volume editor', 'Volume editor'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B14', true, 'Editorial board member', 'Editorial board member'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B15', true, 'Editorial coordination by', 'Editorial coordination by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B16', true, 'Managing editor', 'Managing editor'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B17', true, 'Founded by', 'Usually the founder editor of a serial publication: Begruendet von'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B18', true, 'Prepared for publication by', 'Prepared for publication by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B19', true, 'Associate editor', 'Associate editor'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B20', true, 'Consultant editor', 'Use also for ''advisory editor'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B21', true, 'General editor', 'General editor'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B22', true, 'Dramatized by', 'Dramatized by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B23', true, 'General rapporteur', 'In Europe, an expert editor who takes responsibility for the legal content of a collaborative law volume'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B24', true, 'Literary editor', 'An editor who is responsible for establishing the text used in an edition of a literary work, where this is recognised as a distinctive role (in Spain, ''editor literario'')'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B25', true, 'Arranged by (music)', 'Arranged by (music)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B99', true, 'Other adaptation by', 'Other type of adaptation or editing not specified above'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'C01', true, 'Compiled by', 'Compiled by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'C02', true, 'Selected by', 'Selected by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'C99', true, 'Other compilation by', 'Other type of compilation not specified above'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D01', true, 'Producer', 'Producer'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D02', true, 'Director', 'Director'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D03', true, 'Conductor', 'Conductor of a musical performance'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D99', true, 'Other direction by', 'Other type of direction not specified above'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E01', true, 'Actor', 'Actor'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E02', true, 'Dancer', 'Dancer'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E03', true, 'Narrator', 'Narrator'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E04', true, 'Commentator', 'Commentator'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E05', true, 'Vocal soloist', 'Singer etc'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E06', true, 'Instrumental soloist', 'Instrumental soloist'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E07', true, 'Read by', 'Reader of recorded text, as in an audiobook'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E08', true, 'Performed by (orchestra, band, ensemble)', 'Name of a musical group in a performing role'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E99', true, 'Performed by', 'Other type of performer not specified above: use for a recorded performance which does not fit a category above, eg a performance by a stand-up comedian.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'F01', true, 'Filmed/photographed by', 'Filmed/photographed by'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'F99', true, 'Other recording by', 'Other type of recording not specified above'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Z01', true, 'Assisted by', 'May be associated with any contributor role, and placement should therefore be controlled by contributor sequence numbering'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Z99', true, 'Other', 'Other creative responsibility not falling within A to F above'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '17';
--
-- 18 - Person / organization name type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '18', 'Person / organization name type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Unspecified', 'Unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '18';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Pseudonym', 'May be used to give a well-known pseudonym, where the primary name is a ''real'' name'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '18';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Authority-controlled name', 'Authority-controlled name'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '18';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Earlier name', 'Earlier name'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '18';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, '''Real'' name', 'May be used to identify a real name, where the primary name is a pseudonym'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '18';
--
-- 19 - Unnamed person(s)
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '19', 'Unnamed person(s)',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Unknown', 'Unknown'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '19';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Anonymous', 'Anonymous'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '19';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'et al', 'And others: additional contributors not listed'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '19';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Various authors', 'When the product is a pack of books by different authors'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '19';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Synthesized voice - male', 'Use with Contributor role code E07 ''read by'', for audio books for the blind'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '19';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Synthesized voice - female', 'Use with Contributor role code E07 ''read by'', for audio books for the blind'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '19';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Synthesized voice - unspecified', 'Use with Contributor role code E07 ''read by'', for audio books for the blind'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '19';
--
-- 21 - Edition type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '21', 'Edition type code',
           true, true, 'CodeTablesONIX30Char3', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ABR', true, 'Abridged', 'Content has been shortened: use for abridged, shortened, concise, condensed.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ADP', true, 'Adapted', 'Content has been adapted to serve a different purpose or audience, or from one medium to another: use for dramatization, novelization etc. Use <EditionStatement> to describe the exact nature of the adaptation.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ALT', true, 'Alternate', 'Do not use. This code is now DEPRECATED, but is retained in the list for reasons of backwards compatibility.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ANN', true, 'Annotated', 'Content is augmented by the addition of notes'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BLL', true, 'Bilingual edition', 'Both languages should be specified in the ''Language'' group. Use MLL for an edition in more than two languages.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BRL', true, 'Braille', 'Braille edition'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CMB', true, 'Combined volume', 'An edition in which two or more works also published separately are combined in a single volume; AKA ''omnibus'' edition.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CRI', true, 'Critical', 'Content includes critical commentary on the text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CSP', true, 'Coursepack', 'Content was compiled for a specified educational course.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DGO', true, 'Digital original', 'A digital product which has no print counterpart and is not expected to have a print counterpart.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ENH', true, 'Enhanced', 'Use for e-publications that have been enhanced with additional text, speech, other audio, video, interactive or other content.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ENL', true, 'Enlarged', 'Content has been enlarged or expanded from that of a previous edition.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'EXP', true, 'Expurgated', '''Offensive'' content has been removed'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FAC', true, 'Facsimile', 'Exact reproduction of the content and format of a previous edition.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FST', true, 'Festschrift', 'A collection of writings published in honor of a person, an institution or a society.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ILL', true, 'Illustrated', 'Content includes extensive illustrations which are not part of other editions'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LTE', true, 'Large type / large print', 'Large print edition, print sizes 14 to 19 pt - see also ULP'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MCP', true, 'Microprint', 'A printed edition in a type size too small to be read without a magnifying glass'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MDT', true, 'Media tie-in', 'An edition published to coincide with the release of a film, TV program, or electronic game based on the same work. Use <EditionStatement> to describe the exact nature of the tie-in.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MLL', true, 'Multilingual edition', 'All languages should be specified in the ''Language'' group. Use BLL for a bilingual edition.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NED', true, 'New edition', 'Where no other information is given, or no other coded type is applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NUM', true, 'Edition with numbered copies', 'A limited edition in which each copy is individually numbered'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PRB', true, 'Prebound edition', 'In the US, a book that was previously bound, normally as a paperback, and has been rebound with a library-quality hardcover binding by a supplier other than the original publisher. See also the <Publisher> and <RelatedProduct> composites for other aspects of the treatment of prebound editions in ONIX.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'REV', true, 'Revised', 'Content has been revised from that of a previous edition.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SCH', true, 'School edition', 'An edition intended specifically for use in schools.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SMP', true, 'Simplified language edition', 'An edition that uses simplified language (Finnish ''Selkokirja'')'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SPE', true, 'Special edition', 'Use for anniversary, collectors'', de luxe, gift, limited, numbered, autographed edition. Use <EditionStatement> to describe the exact nature of the special edition.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'STU', true, 'Student edition', 'Where a text is available in both student and teacher''s editions.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TCH', true, 'Teacher''s edition', 'Where a text is available in both student and teacher''s editions; use also for instructor''s or leader''s editions.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'UBR', true, 'Unabridged', 'Where a title has also been published in an abridged edition; also for audiobooks, regardless of whether an abridged audio version also exists.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ULP', true, 'Ultra large print', 'For print sizes 20pt and above, and with typefaces designed for the visually impaired - see also LTE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'UXP', true, 'Unexpurgated', 'Content previously considered ''offensive'' has been restored'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VAR', true, 'Variorum', 'Content includes notes by various commentators, and/or includes and compares several variant texts of the same work.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '21';
--
-- 22 - Language role code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '22', 'Language role code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Language of text', 'Language of text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '22';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Original language of a translated text', 'Where the text in the original language is NOT part of the current product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '22';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Language of abstracts', 'Where different from language of text: used mainly for serials'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '22';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Rights language', 'Language to which specified rights apply'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '22';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Rights-excluded language', 'Language to which specified rights do not apply'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '22';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Original language in a multilingual edition', 'Where the text in the original language is part of a bilingual or multilingual edition'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '22';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Translated language in a multilingual edition', 'Where the text in a translated language is part of a bilingual or multilingual edition'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '22';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Language of audio track', 'For example, on a DVD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '22';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Language of subtitles', 'For example, on a DVD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '22';
--
-- 23 - Extent type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '23', 'Extent type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Main content page count', 'The highest-numbered page in a single numbered sequence of main content, usually the highest Arabic-numbered page in a book; or, for books without page numbers or (rarely) with multiple numbered sequences of main content, the total number of pages that carry the main content of the book. This is the preferred page count for most books for the general reader. For books with substantial front and/or back matter, include also Front matter and Back matter page counts, or Total numbered pages.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '23';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Number of words', 'Number of words of natural language text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '23';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Front matter page count', 'The total number of numbered (usually Roman-numbered) pages that precede the main content of a book. This usually consists of an introduction, preface, foreword, etc.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '23';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Back matter page count', 'The total number of numbered (usually Roman-numbered) pages that follow the main content of a book. This usually consists of an afterword, appendices, endnotes, index, etc.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '23';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Total numbered pages', 'The sum of all Roman- and Arabic-numbered pages.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '23';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Production page count', 'The total number of pages in a book, including unnumbered pages, front matter, back matter, etc. This includes any blank pages at the back that carry no content and are present only for convenience of printing and binding'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '23';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Absolute page count', 'The total number of pages of the book counting the cover as page 1. This page count type should be used only for digital publications delivered with fixed pagination.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '23';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Number of pages in print counterpart', 'The total number of pages in the print counterpart of a digital product delivered without fixed pagination.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '23';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Duration', 'Duration in time, expressed in the specified extent unit'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '23';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Notional number of pages in digital product', 'An estimate of the number of ''pages'' in a digital product delivered without fixed pagination, and with no print counterpart, given as an indication of the size of the work.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '23';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Content page count', 'The sum of all Roman- and Arabic-numbered and contentful unnumbered pages.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '23';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Total unnumbered insert page count', 'The total number of unnumbered pages with content inserted within the main content of a book - for example inserts/plate sections that are not numbered.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '23';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '22', true, 'Filesize', 'The size of a digital file, expressed in the specified extent unit'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '23';
--
-- 24 - Extent unit code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '24', 'Extent unit code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Words', 'Words of natural language text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '24';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Pages', 'Pages'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '24';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Hours (integer and decimals)', 'Hours (integer and decimals)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '24';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Minutes (integer and decimals)', 'Minutes (integer and decimals)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '24';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Seconds (integer only)', 'Seconds (integer only)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '24';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'Hours HHH', 'Fill with zeroes if any elements are missing'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '24';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'Hours and minutes HHHMM', 'Fill with zeroes if any elements are missing'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '24';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '16', true, 'Hours minutes seconds HHHMMSS', 'Fill with zeroes if any elements are missing'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '24';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'Bytes', 'Bytes'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '24';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'Kbytes', 'Kbytes'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '24';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '19', true, 'Mbytes', 'Mbytes'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '24';
--
-- 25 - Illustration and other content type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '25', 'Illustration and other content type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Unspecified, see description', 'See description in the <IllustrationTypeDescription> element'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Illustrations, black and white', 'Illustrations, black and white'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Illustrations, color', 'Illustrations, color'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Halftones, black and white', 'Including black and white photographs'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Halftones, color', 'Including color photographs'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Line drawings, black and white', 'Line drawings, black and white'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Line drawings, color', 'Line drawings, color'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Tables, black and white', 'Tables, black and white'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Tables, color', 'Tables, color'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Illustrations, unspecified', 'Illustrations, unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Halftones, unspecified', 'Including photographs'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Tables, unspecified', 'Tables, unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Line drawings, unspecified', 'Line drawings, unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Halftones, duotone', 'Halftones, duotone'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'Maps', 'Maps'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'Frontispiece', 'Frontispiece'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '16', true, 'Diagrams', 'Diagrams'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'Figures', 'Figures'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'Charts', 'Charts'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '19', true, 'Recorded music items', 'Recorded music extracts or examples, or complete recorded work(s), accompanying textual or other content'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '20', true, 'Printed music items', 'Printed music extracts or examples, or complete music score(s), accompanying textual or other content'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '21', true, 'Graphs', 'To be used in the mathematical sense of a diagram that represents numerical values plotted against an origin and axes, cf codes 16 and 18'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '22', true, 'Plates, unspecified', '''Plates'' means illustrations that are on separate pages bound into the body of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '23', true, 'Plates, black and white', '''Plates'' means illustrations that are on separate pages bound into the body of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '24', true, 'Plates, color', '''Plates'' means illustrations that are on separate pages bound into the body of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '25', true, 'Index', 'Index'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '26', true, 'Bibliography', 'Bibliography'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '27', true, 'Inset maps', 'Larger-scale inset maps of places or features of interest included in a map product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '28', true, 'GPS grids', 'GPS grids included in a map product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '25';
--
-- 26 - Main subject scheme identifier code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '26', 'Main subject scheme identifier code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Dewey', 'Dewey Decimal Classification'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Abridged Dewey', 'Abridged Dewey'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'LC classification', 'US Library of Congress classification'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'LC subject heading', 'US Library of Congress subject heading'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'NLM classification', 'US National Library of Medicine medical classification'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'MeSH heading', 'US National Library of Medicine Medical subject heading'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'NAL subject heading', 'US National Agricultural Library subject heading'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'AAT', 'Getty Art and Architecture Thesaurus heading'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'UDC', 'Universal Decimal Classification'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'BISAC Subject Heading', 'BISAC Subject Headings are used in the North American market to categorize books based on topical content. They serve as a guideline for shelving books in physical stores and browsing books in online stores.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'BISAC region code', 'A geographical qualifier used with a BISAC subject category.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'BIC subject category', 'For all BIC subject codes and qualifiers, see http://www.bic.org.uk/7/BIC-Standard-Subject-Categories/.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'BIC geographical qualifier', 'BIC geographical qualifier'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'BIC language qualifier (language as subject)', 'BIC language qualifier (language as subject)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'BIC time period qualifier', 'BIC time period qualifier'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '16', true, 'BIC educational purpose qualifier', 'BIC educational purpose qualifier'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'BIC reading level and special interest qualifier', 'BIC reading level and special interest qualifier'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'DDC-Sachgruppen der Deutschen Nationalbibliografie', 'Used for German National Bibliography since 2004 (100 subjects). Is different from value 30.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '19', true, 'LC fiction genre heading', 'LC fiction genre heading'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '20', true, 'Keywords', 'Where multiple keywords or keyword phrases are sent in a single instance of the <SubjectHeadingText> element, it is recommended that they should be separated by semi-colons (this is consistent with Library of Congress preferred practice)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '21', true, 'BIC children''s book marketing category', 'See http://www.bic.org.uk/8/Children''s-Books-Marketing-Classifications/'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '22', true, 'BISAC Merchandising Theme', 'BISAC Merchandising Themes are used in addition to BISAC Subject Headings to denote an audience to which a work may be of particular appeal, a time of year or event for which a work may be especially appropriate, or to further describe fictional works that have been subject-coded by genre'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '23', true, 'Publisher''s own category code', 'Publisher''s own category code'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '24', true, 'Proprietary subject scheme', 'As specified in <SubjectSchemeName>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '25', true, 'Tabla de materias ISBN', 'Latin America'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '26', true, 'Warengruppen-Systematik des deutschen Buchhandels', 'Warengruppen-Systematik des deutschen Buchhandels'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '27', true, 'Schlagwort-Normdatei (SWD)', 'Subject heading text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '28', true, 'Th&egrave;mes Electre', 'Subject classification used by Electre (France)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '29', true, 'CLIL', 'France'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '30', true, 'DNB-Sachgruppen', 'Deutsche Bibliothek subject groups. Used for German National Bibliography until 2003 (65 subjects). Is different from value 18.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '31', true, 'NUGI', 'Nederlandse Uniforme Genre-Indeling (former Dutch book trade classification)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '32', true, 'NUR', 'Nederlandstalige Uniforme Rubrieksindeling (Dutch book trade classification, from 2002)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '33', true, 'ECPA Christian Book Category', 'ECPA Christian Product Category Book Codes, consisting of up to three x 3-letter blocks, for Super Category, Primary Category and Sub-Category. See http://www.ecpa.org/ECPA/cbacategories.xls'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '34', true, 'SISO', 'Schema Indeling Systematische Catalogus Openbare Bibliotheken (Dutch library classification)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '35', true, 'Korean Decimal Classification (KDC)', 'A modified Dewey Decimal Classification used in the Republic of Korea'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '36', true, 'DDC 22 ger', 'Code. German Translation of DDC 22. Also known as DDC Deutsch 22'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '37', true, 'Bokgrupper', 'Norwegian book trade product categories (4701)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '38', true, 'Varegrupper', 'Norwegian bookselling subject categories (4702)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '39', true, 'L&aelig;replaner', 'Norwegian school curriculum version (4703)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '40', true, 'Nippon Decimal Classification', 'Japanese subject classification scheme'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '41', true, 'BSQ', 'BookSelling Qualifier: Russian book trade classification'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '42', true, 'ANELE Materias', 'Spain: subject coding scheme of the Asociaci&oacute;n Nacional de Editores de Libros y Material de Ense&ntilde;anza'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '43', true, 'Skolefag', 'Norwegian primary and secondary school subject categories (4705)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '44', true, 'Videreg&aring;ende', 'Norwegian list of categories used in higher secondary education and vocational training (4706)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '45', true, 'Undervisningsmateriell', 'Norwegian list of categories for books and other material used in education (4707)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '46', true, 'Norsk DDK', 'Norwegian version of Dewey Decimal Classification'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '47', true, 'Varugrupper', 'Swedish bookselling subject categories'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '48', true, 'SAB', 'Swedish classification scheme'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '49', true, 'L&auml;romedel', 'Swedish bookselling educational subject'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '50', true, 'F&ouml;rhandsbeskrivning', 'Swedish publishers preliminary subject classification'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '51', true, 'Spanish ISBN UDC subset', 'Controlled subset of UDC codes used by the Spanish ISBN Agency'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '52', true, 'ECI subject categories', 'Subject categories defined by El Corte Ingl&eacute;s and used widely in the Spanish book trade'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '53', true, 'Soggetto CCE', 'Classificazione commerciale editoriale (Italian book trade subject category based on BIC)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '54', true, 'Qualificatore geografico CCE', 'Qualificatore geografico CCE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '55', true, 'Qualificatore di lingua CCE', 'Qualificatore di lingua CCE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '56', true, 'Qualificatore di periodo storico CCE', 'Qualificatore di periodo storico CCE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '57', true, 'Qualificatore di livello scolastico CCE', 'Qualificatore di livello scolastico CCE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '58', true, 'Qualificatore di et&agrave; di lettura CCE', 'Qualificatore di et&agrave; di lettura CCE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '59', true, 'VdS Bildungsmedien F&auml;cher', 'Subject code list of the German association of educational media publishers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '60', true, 'Fagkoder', 'Undervisningsdirektoratets fagkoder for kunnskapsl&oslash;ftet I videreg&aring;ende (Norwegian educational curriculum for secondary schools) (4708)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '61', true, 'JEL classification', 'Journal of Economic Literature classification scheme'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '62', true, 'CSH', 'National Library of Canada subject heading (English)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '63', true, 'RVM', 'R&eacute;pertoire de vedettes-mati&egrave;re (Biblioth&egrave;que et Archives Canada et Biblioth&egrave;que de l''Universit&eacute; Laval) (French)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '64', true, 'YSA', 'Yleinen suomalainen asiasanasto: Finnish General Thesaurus'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '65', true, 'All&auml;rs', 'Allm&auml;n tesaurus p&aring; svenska: Swedish translation of the Finnish General Thesaurus'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '66', true, 'YKL', 'Yleisten kirjastojen luokitusj&auml;rjestelm&auml;: Finnish Public Libraries Classification System'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '67', true, 'MUSA', 'Musiikin asiasanasto: Finnish Music Thesaurus'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '68', true, 'CILLA', 'Specialtesaurus f&ouml;r musik: Swedish translation of the Finnish Music Thesaurus'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '69', true, 'Kaunokki', 'Fiktiivisen aineiston asiasanasto: Finnish thesaurus for fiction'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '70', true, 'Bella', 'Specialtesaurus f&ouml;r fiktivt material: Swedish translation of the Finnish thesaurus for fiction'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '71', true, 'YSO', 'Yleinen suomalainen ontologia: Finnish General Upper Ontology'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '72', true, 'Paikkatieto ontologia', 'Finnish Place Ontology'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '73', true, 'Suomalainen kirja-alan luokitus', 'Finnish book trade categorisation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '74', true, 'Sears', 'Sears List of Subject Headings'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '75', true, 'BIC E4L', 'BIC E4Libraries Category Headings'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '76', true, 'CSR', 'Code Sujet Rayon: subject categories used by bookstores in France'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '77', true, 'Suomalainen oppiaineluokitus', 'Finnish school subject categories'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '78', true, 'Japanese book trade C-Code', 'Japanese book trade C-Code'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '79', true, 'Japanese book trade Genre Code', 'Japanese book trade Genre Code'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '80', true, 'Fiktiivisen aineiston lis&auml;luokitus', 'Finnish fiction genre classification'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '26';
--
-- 27 - Subject scheme identifier code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '27', 'Subject scheme identifier code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Dewey', 'Dewey Decimal Classification'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Abridged Dewey', 'Abridged Dewey'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'LC classification', 'US Library of Congress classification'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'LC subject heading', 'US Library of Congress subject heading'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'NLM classification', 'US National Library of Medicine medical classification'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'MeSH heading', 'US National Library of Medicine Medical subject heading'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'NAL subject heading', 'US National Agricultural Library subject heading'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'AAT', 'Getty Art and Architecture Thesaurus heading'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'UDC', 'Universal Decimal Classification'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'BISAC Subject Heading', 'BISAC Subject Headings are used in the North American market to categorize books based on topical content. They serve as a guideline for shelving books in physical stores and browsing books in online stores.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'BISAC region code', 'A geographical qualifier used with a BISAC subject category'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'BIC subject category', 'For all BIC subject codes and qualifiers, see http://www.bic.org.uk/7/BIC-Standard-Subject-Categories/.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'BIC geographical qualifier', 'BIC geographical qualifier'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'BIC language qualifier (language as subject)', 'BIC language qualifier (language as subject)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'BIC time period qualifier', 'BIC time period qualifier'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '16', true, 'BIC educational purpose qualifier', 'BIC educational purpose qualifier'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'BIC reading level and special interest qualifier', 'BIC reading level and special interest qualifier'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'DDC-Sachgruppen der Deutschen Nationalbibliografie', 'Used for German National Bibliography since 2004 (100 subjects). Is different from value 30.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '19', true, 'LC fiction genre heading', 'LC fiction genre heading'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '20', true, 'Keywords', 'Where multiple keywords or keyword phrases are sent in a single instance of the <SubjectHeadingText> element, it is recommended that they should be separated by semi-colons (this is consistent with Library of Congress preferred practice)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '21', true, 'BIC children''s book marketing category', 'See http://www.bic.org.uk/8/Children''s-Books-Marketing-Classifications/'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '22', true, 'BISAC Merchandising Theme', 'BISAC Merchandising Themes are used in addition to BISAC Subject Headings to denote an audience to which a work may be of particular appeal, a time of year or event for which a work may be especially appropriate, or to further describe fictional works that have been subject-coded by genre'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '23', true, 'Publisher''s own category code', 'Publisher''s own category code'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '24', true, 'Proprietary subject scheme', 'As specified in <SubjectSchemeName>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '25', true, 'Tabla de materias ISBN', 'Latin America'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '26', true, 'Warengruppen-Systematik des deutschen Buchhandels', 'Warengruppen-Systematik des deutschen Buchhandels'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '27', true, 'Schlagwort-Normdatei (SWD)', 'Subject heading text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '28', true, 'Th&egrave;mes Electre', 'Subject classification used by Electre (France)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '29', true, 'CLIL', 'France'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '30', true, 'DNB-Sachgruppen', 'Deutsche Bibliothek subject groups. Code. Used for German National Bibliography until 2003 (65 subjects). Is different from value 18.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '31', true, 'NUGI', 'Nederlandse Uniforme Genre-Indeling (former Dutch book trade classification)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '32', true, 'NUR', 'Nederlandstalige Uniforme Rubrieksindeling (Dutch book trade classification, from 2002)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '33', true, 'ECPA Christian Book Category', 'ECPA Christian Product Category Book Codes, consisting of up to three x 3-letter blocks, for Super Category, Primary Category and Sub-Category. See http://www.ecpa.org/ECPA/cbacategories.xls'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '34', true, 'SISO', 'Schema Indeling Systematische Catalogus Openbare Bibliotheken (Dutch library classification)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '35', true, 'Korean Decimal Classification (KDC)', 'A modified Dewey Decimal Classification used in the Republic of Korea'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '36', true, 'DDC 22 ger', 'Code. German Translation of DDC 22. Also known as DDC Deutsch 22'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '37', true, 'Bokgrupper', 'Norwegian book trade product categories (4701)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '38', true, 'Varegrupper', 'Norwegian bookselling subject categories (4702)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '39', true, 'L&aelig;replaner', 'Norwegian school curriculum version (4703)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '40', true, 'Nippon Decimal Classification', 'Japanese subject classification scheme'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '41', true, 'BSQ', 'BookSelling Qualifier: Russian book trade classification'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '42', true, 'ANELE Materias', 'Spain: subject coding scheme of the Asociaci&oacute;n Nacional de Editores de Libros y Material de Ense&ntilde;anza'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '43', true, 'Skolefag', 'Norwegian primary and secondary school subject categories (4705)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '44', true, 'Videreg&aring;ende', 'Norwegian list of categories used in higher secondary education and vocational training (4706)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '45', true, 'Undervisningsmateriell', 'Norwegian list of categories for books and other material used in education (4707)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '46', true, 'Norsk DDK', 'Norwegian version of Dewey Decimal Classification'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '47', true, 'Varugrupper', 'Swedish bookselling subject categories'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '48', true, 'SAB', 'Swedish classification scheme'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '49', true, 'L&auml;romedel', 'Swedish bookselling educational subject'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '50', true, 'F&ouml;rhandsbeskrivning', 'Swedish publishers preliminary subject classification'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '51', true, 'Spanish ISBN UDC subset', 'Controlled subset of UDC codes used by the Spanish ISBN Agency'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '52', true, 'ECI subject categories', 'Subject categories defined by El Corte Ingl&eacute;s and used widely in the Spanish book trade'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '53', true, 'Soggetto CCE', 'Classificazione commerciale editoriale (Italian book trade subject category based on BIC)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '54', true, 'Qualificatore geografico CCE', 'Qualificatore geografico CCE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '55', true, 'Qualificatore di lingua CCE', 'Qualificatore di lingua CCE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '56', true, 'Qualificatore di periodo storico CCE', 'Qualificatore di periodo storico CCE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '57', true, 'Qualificatore di livello scolastico CCE', 'Qualificatore di livello scolastico CCE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '58', true, 'Qualificatore di et&agrave; di lettura CCE', 'Qualificatore di et&agrave; di lettura CCE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '59', true, 'VdS Bildungsmedien F&auml;cher', 'Subject code list of the German association of educational media publishers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '60', true, 'Fagkoder', 'Undervisningsdirektoratets fagkoder for kunnskapsl&oslash;ftet I videreg&aring;ende (Norwegian educational curriculum for secondary schools) (4708)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '61', true, 'JEL classification', 'Journal of Economic Literature classification scheme'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '62', true, 'CSH', 'National Library of Canada subject heading (English)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '63', true, 'RVM', 'R&eacute;pertoire de vedettes-mati&egrave;re (Biblioth&egrave;que et Archives Canada et Biblioth&egrave;que de l''Universit&eacute; Laval) (French)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '64', true, 'YSA', 'Yleinen suomalainen asiasanasto: Finnish General Thesaurus'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '65', true, 'All&auml;rs', 'Allm&auml;n tesaurus p&aring; svenska: Swedish translation of the Finnish General Thesaurus'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '66', true, 'YKL', 'Yleisten kirjastojen luokitusj&auml;rjestelm&auml;: Finnish Public Libraries Classification System'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '67', true, 'MUSA', 'Musiikin asiasanasto: Finnish Music Thesaurus'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '68', true, 'CILLA', 'Specialtesaurus f&ouml;r musik: Swedish translation of the Finnish Music Thesaurus'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '69', true, 'Kaunokki', 'Fiktiivisen aineiston asiasanasto: Finnish thesaurus for fiction'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '70', true, 'Bella', 'Specialtesaurus f&ouml;r fiktivt material: Swedish translation of the Finnish thesaurus for fiction'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '71', true, 'YSO', 'Yleinen suomalainen ontologia: Finnish General Upper Ontology'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '72', true, 'Paikkatieto ontologia', 'Finnish Place Ontology'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '73', true, 'Suomalainen kirja-alan luokitus', 'Finnish book trade categorisation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '74', true, 'Sears', 'Sears List of Subject Headings'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '75', true, 'BIC E4L', 'BIC E4Libraries Category Headings'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '76', true, 'CSR', 'Code Sujet Rayon: subject categories used by bookstores in France'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '77', true, 'Suomalainen oppiaineluokitus', 'Finnish school subject categories'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '78', true, 'Japanese book trade C-Code', 'Japanese book trade C-Code'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '79', true, 'Japanese book trade Genre Code', 'Japanese book trade Genre Code'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '80', true, 'Fiktiivisen aineiston lis&auml;luokitus', 'Finnish fiction genre classification'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '81', true, 'Arabic Subject heading scheme', 'Arabic Subject heading scheme'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '82', true, 'Arabized BIC subject category', 'Arabized version of BIC subject category scheme developed by El Kotob'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '83', true, 'Arabized LC subject headings', 'Arabized version of Library of Congress scheme'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '84', true, 'Bibliotheca Alexandrina Subject Headings', 'Classification scheme used by Library of Alexandria'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '27';
--
-- 28 - Audience code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '28', 'Audience code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'General/trade', 'For a non-specialist adult audience'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '28';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Children/juvenile', 'For a juvenile audience, not specifically for any educational purpose'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '28';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Young adult', 'For a teenage audience, not specifically for any educational purpose'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '28';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Primary and secondary/elementary and high school', 'Kindergarten, pre-school, primary/elementary or secondary/high school education'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '28';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'College/higher education', 'For universities and colleges of further and higher education'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '28';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Professional and scholarly', 'For an expert adult audience, including academic research'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '28';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'ELT/ESL', 'Intended for use in teaching English as a second language'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '28';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Adult education', 'For centres providing academic, vocational or recreational courses for adults'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '28';
--
-- 29 - Audience code type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '29', 'Audience code type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'ONIX audience codes', 'Using List 28'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Proprietary', 'Proprietary'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'MPAA rating', 'Motion Picture Association of America rating applied to movies'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'BBFC rating', 'British Board of Film Classification rating applied to movies'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'FSK rating', 'German FSK (Freiwillige Selbstkontrolle der Filmwirtschaft) rating applied to movies'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'BTLF audience code', 'French Canadian audience code list, used by BTLF for Memento'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Electre audience code', 'Audience code used by Electre (France)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'ANELE Tipo', 'Spain: educational audience and material type code of the Asociaci&oacute;n Nacional de Editores de Libros y Material de Ense&ntilde;anza'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'AVI', 'Code list used to specify reading levels for children''s books, used in Flanders, and formerly in the Netherlands - see also code 18'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'USK rating', 'German USK (Unterhaltungssoftware Selbstkontrolle) rating applied to video or computer games'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'AWS', 'Audience code used in Flanders'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Schulform', 'Type of school: codelist maintained by VdS Bildungsmedien eV, the German association of educational media publishers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Bundesland', 'School region: codelist maintained by VdS Bildungsmedien eV, the German association of educational media publishers, indicating where products are licensed to be used in schools'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'Ausbildungsberuf', 'Occupation: codelist for vocational training materials, maintained by VdS Bildungsmedien eV, the German association of educational media publishers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'Suomalainen kouluasteluokitus', 'Finnish school or college level'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '16', true, 'CBG age guidance', 'UK Publishers Association, Children''s Book Group, coded indication of intended reader age, carried on book covers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'Nielsen Book audience code', 'Audience code used in Nielsen Book Services'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'AVI (revised)', 'Code list used to specify reading levels for children''s books, used in the Netherlands - see also code 09'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '19', true, 'Lexile measure', 'Lexile measure (the measure in <ComplexityCode> may optionally be prefixed by the Lexile code). Examples might be ''880L'', ''AD0L'' or ''HL600L'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '29';
--
-- 30 - Audience range qualifier
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '30', 'Audience range qualifier',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'US school grade range', 'Values for <AudienceRangeValue> are specified in List 77'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '30';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'UK school grade', 'Values are defined by BIC for England and Wales, Scotland and N Ireland'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '30';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'Reading speed, words per minute', 'Values in <AudienceRangeValue> must be integers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '30';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '16', true, 'Interest age, months', 'For use up to 30 months only: values in <AudienceRangeValue> must be integers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '30';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'Interest age, years', 'Values in <AudienceRangeValue> must be integers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '30';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'Reading age, years', 'Values in <AudienceRangeValue> must be integers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '30';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '19', true, 'Spanish school grade', 'Spain: combined grade and region code, maintained by the Ministerio de Educaci&oacute;n'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '30';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '20', true, 'Skoletrinn', 'Norwegian educational grades (4704)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '30';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '21', true, 'Niv&aring;', 'Swedish educational qualifier (code)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '30';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '22', true, 'Italian school grade', 'Italian school grade'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '30';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '23', true, 'Schulform', 'DEPRECATED - assigned in error: see List 29'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '30';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '24', true, 'Bundesland', 'DEPRECATED - assigned in error: see List 29'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '30';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '25', true, 'Ausbildungsberuf', 'DEPRECATED - assigned in error: see List 29'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '30';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '26', true, 'Canadian school grade range', 'Values for <AudienceRangeValue> are specified in List 77'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '30';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '27', true, 'Finnish school grade range', 'Finnish school grade range'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '30';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '28', true, 'Finnish Upper secondary school course', 'Lukion kurssi'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '30';
--
-- 31 - Audience range precision
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '31', 'Audience range precision',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Exact', 'Exact'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '31';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'From', 'From'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '31';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'To', 'To'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '31';
--
-- 32 - Complexity scheme identifier
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '32', 'Complexity scheme identifier',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Lexile code', 'DEPRECATED in ONIX 3 - use <Audience> instead'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '32';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Lexile number', 'DEPRECATED in ONIX 3 - use <Audience> instead'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '32';
--
-- 33 - Other text type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '33', 'Other text type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Main description', 'Main description'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Short description/annotation', 'Limited to a maximum of 350 characters'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Long description', 'Long description'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Table of contents', 'Used for a table of contents sent as a single text field, which may or may not carry structure expressed through HTML etc. Alternatively, a fully structured table of contents may be sent by using the <ContentItem> composite.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Review quote, restricted length', 'A review quote that is restricted to a maximum length agreed between the sender and receiver of an ONIX file'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Quote from review of previous edition', 'A review quote taken from a review of a previous edition of the work'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Review text', 'Full text of a review of the product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Review quote', 'A quote from a review of the product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Promotional ''headline''', 'A promotional phrase which is intended to headline a description of the product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Previous review quote', 'A quote from a review of a previous work by the same author(s) or in the same series'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Author comments', 'May be part of Reading Group Guide material: for other commentary, see code 42'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Description for reader', 'Description for reader'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Biographical note', 'A note referring to all contributors to a product - NOT linked to a single contributor'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'Description for Reading Group Guide', 'For linking to a complete Reading Group Guide, see code 41'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'Discussion question for Reading Group Guide', 'Each instance must carry a single question: for linking to a complete Reading Group Guide, see code 41'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '16', true, 'Competing titles', 'Free text listing of other titles with which the product is in competition: although this text might not appear in ''public'' ONIX records, it could be required where ONIX Is used as a communication format within a group of publishing and distribution companies'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'Flap copy', 'Flap copy'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'Back cover copy', 'Back cover copy'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '19', true, 'Feature', 'Text describing a feature of a product to which the publisher wishes to draw attention for promotional purposes. Each separate feature should be described by a separate repeat, so that formatting can be applied at the discretion of the receiver of the ONIX record.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '20', true, 'New feature', 'As code 19, but used for a feature which is new in a new edition of the product.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '21', true, 'Publisher''s notice', 'A statement included by a publisher in fulfilment of its contractual obligations, such as a disclaimer, sponsor statement, or legal notice of any sort. Note that the inclusion of such a notice cannot and does not imply that a user of the ONIX record is obliged to reproduce it.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '23', true, 'Excerpt from book', 'Excerpt from book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '24', true, 'First chapter', 'First chapter'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '25', true, 'Description for sales people', 'Description for sales people'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '26', true, 'Description for press or other media', 'Description for press or other media'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '27', true, 'Description for subsidiary rights department', 'Description for subsidiary rights department'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '28', true, 'Description for teachers/educators', 'Description for teachers/educators'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '30', true, 'Unpublished endorsement', 'A quote usually provided by a celebrity to promote a new book, not from a review'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '31', true, 'Description for bookstore', 'Description for bookstore'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '32', true, 'Description for library', 'Description for library'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '33', true, 'Introduction or preface', 'Introduction or preface'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '34', true, 'Full text', 'Full text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '35', true, 'Promotional text', 'Promotional text not covered elsewhere'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '40', true, 'Author interview / QandA', 'Author interview / QandA'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '41', true, 'Reading Group Guide', 'Complete guide: see also codes 14 and 15'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '42', true, 'Commentary / discussion', 'Other than author comments: see code 11'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '99', true, 'Country of final manufacture', 'A single ISO 3166-1 country code from List 91 designating the country of final manufacture of the product. (This functionality is provided as a workaround in ONIX 2.1. ONIX 3.0 has specific provision for country of manufacture as a separate element.)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '33';
--
-- 34 - Text format code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '34', 'Text format code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'ASCII text', 'DEPRECATED: use code 06 or 07 as appropriate'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '34';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'SGML', 'SGML'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '34';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'HTML', 'Other than XHTML'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '34';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'XML', 'Other than XHTML'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '34';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'PDF', 'DEPRECATED: was formerly assigned both to PDF and to XHTML'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '34';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'XHTML', 'XHTML'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '34';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Default text format', 'Default: text in the encoding declared at the head of the message or in the XML default (UTF-8 or UTF-16) if there is no explicit declaration'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '34';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Basic ASCII text', 'Plain text containing no tags of any kind, except for the tags &amp;amp; and &amp;lt; that XML insists must be used to represent ampersand and less-than characters in text; and with the character set limited to the ASCII range, i.e. valid UTF-8 characters whose character number lies between 32 (space) and 126 (tilde)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '34';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'PDF', 'Replaces 04 for the <TextFormat> element, but cannot of course be used as a textformat attribute'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '34';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Microsoft rich text format (RTF)', 'Microsoft rich text format (RTF)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '34';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Microsoft Word binary format (DOC)', 'Microsoft Word binary format (DOC)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '34';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'ECMA 376 WordprocessingML', 'Office Open XML file format / OOXML / DOCX'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '34';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'ISO 26300 ODF', 'ISO Open Document Format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '34';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Corel Wordperfect binary format (DOC)', 'Corel Wordperfect binary format (DOC)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '34';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'EPUB', 'The Open Publication Structure / OPS Container Format standard of the International Digital Publishing Forum (IDPF) [File extension .epub]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '34';
--
-- 35 - Text link type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '35', 'Text link type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'URL', 'URL'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '35';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'DOI', 'DOI'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '35';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'PURL', 'PURL'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '35';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'URN', 'URN'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '35';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'FTP address', 'FTP address'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '35';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'filename', 'filename'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '35';
--
-- 36 - Front cover image file format code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '36', 'Front cover image file format code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'GIF', 'GIF'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '36';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'JPEG', 'JPEG'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '36';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'TIF', 'TIF'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '36';
--
-- 37 - Front cover image file link type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '37', 'Front cover image file link type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'URL', 'URL'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '37';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'DOI', 'DOI'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '37';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'PURL', 'PURL'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '37';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'URN', 'URN'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '37';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'FTP address', 'FTP address'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '37';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'filename', 'filename'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '37';
--
-- 38 - Image/audio/video file type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '38', 'Image/audio/video file type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Whole product', 'Link to a location where the whole product may be found - used for epublications'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Application: software demo', 'Application: software demo'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Image: front cover', 'Quality unspecified: if sending both a standard quality and a high quality image, use 04 for standard quality and 06 for high quality'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Image: front cover, high quality', 'Should have a minimum resolution of 300 dpi when rendered at the intended size for display or print'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Image: front cover thumbnail', 'Image: front cover thumbnail'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Image: contributor(s)', 'Image: contributor(s)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Image: for series', 'Use for an image, other than a logo, that is part of the ''branding'' of a series'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Image: series logo', 'Image: series logo'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Image: product logo', 'Use only for a logo which is specific to an individual product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'Image: publisher logo', 'Image: publisher logo'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'Image: imprint logo', 'Image: imprint logo'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '22', true, 'Image: table of contents', 'Image: table of contents'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '23', true, 'Image: sample content', 'Use for inside page image for book, or screenshot for software or game (revised definition from Issue 8)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '24', true, 'Image: back cover', 'Quality unspecified: if sending both a standard quality and a high quality image, use 24 for standard quality and 26 for high quality'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '25', true, 'Image: back cover, high quality', 'Should have a minimum resolution of 300 dpi when rendered at the intended size for display or print'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '26', true, 'Image: back cover thumbnail', 'Image: back cover thumbnail'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '27', true, 'Image: other cover material', 'Image: other cover material'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '28', true, 'Image: promotional material', 'Image: promotional material'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '29', true, 'Video segment: unspecified', 'Video segment: unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '30', true, 'Audio segment: unspecified', 'Audio segment: unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '31', true, 'Video: author presentation / commentary', 'Video: author presentation / commentary'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '32', true, 'Video: author interview', 'Video: author interview'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '33', true, 'Video: author reading', 'Video: author reading'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '34', true, 'Video: cover material', 'Video: cover material'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '35', true, 'Video: sample content', 'Video: sample content'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '36', true, 'Video: promotional material', 'Video: promotional material'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '37', true, 'Video: review', 'Video: review'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '38', true, 'Video: other commentary / discussion', 'Video: other commentary / discussion'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '41', true, 'Audio: author presentation / commentary', 'Audio: author presentation / commentary'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '42', true, 'Audio: author interview', 'Audio: author interview'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '43', true, 'Audio: author reading', 'Audio: author reading'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '44', true, 'Audio: sample content', 'Audio: sample content'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '45', true, 'Audio: promotional material', 'Audio: promotional material'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '46', true, 'Audio: review', 'Audio: review'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '47', true, 'Audio: other commentary / discussion', 'Audio: other commentary / discussion'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '51', true, 'Application: sample content', 'Use for ''look inside'' facility or ''widget'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '52', true, 'Application: promotional material', 'Application: promotional material'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '38';
--
-- 39 - Image/audio/video file format code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '39', 'Image/audio/video file format code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'GIF', 'GIF'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '39';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'JPEG', 'JPEG'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '39';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'PDF', 'PDF'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '39';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'TIF', 'TIF'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '39';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'RealAudio 28.8', 'RealAudio 28.8'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '39';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'MP3', 'MP3'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '39';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'MPEG-4', 'MPEG-4 video file'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '39';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'PNG', 'Portable Network Graphics bitmapped image format (.png)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '39';
--
-- 40 - Image/audio/video file link type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '40', 'Image/audio/video file link type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'URL', 'URL'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '40';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'DOI', 'DOI'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '40';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'PURL', 'PURL'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '40';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'URN', 'URN'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '40';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'FTP address', 'FTP address'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '40';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'filename', 'filename'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '40';
--
-- 41 - Prize or award achievement code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '41', 'Prize or award achievement code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Winner', 'Winner'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '41';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Runner-up', 'Named as being in second place'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '41';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Commended', 'Commended'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '41';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Short-listed', 'Nominated by the judging process to be one of the final ''short-list'' from which the winner is selected'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '41';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Long-listed', 'Nominated by the judging process to be one of the preliminary ''long-list'' from which first a short-list and then the winner is selected'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '41';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Joint winner', 'Or co-winner'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '41';
--
-- 42 - Text item type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '42', 'Text item type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Textual work', 'A complete work which is published as a content item in a product which carries two or more such works, eg when two or three novels are published in a single omnibus volume'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '42';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Front matter', 'Text components such as Preface, Introduction etc which appear as preliminaries to the main body of text content in a product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '42';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Body matter', 'Text components such as Part, Chapter, Section etc which appear as part of the main body of text content in a product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '42';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Back matter', 'Text components such as Index which appear after the main body of text in a product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '42';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Serial item, miscellaneous or unspecified', 'For journals'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '42';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Research article', 'For journals'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '42';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Review article', 'For journals'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '42';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Letter', 'For journals'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '42';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'Short communication', 'For journals'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '42';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'Erratum', 'For journals'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '42';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '16', true, 'Abstract', 'For journals'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '42';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'Book review (or review of other publication)', 'For journals'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '42';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'Editorial', 'For journals'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '42';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '19', true, 'Product review', 'For journals'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '42';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '20', true, 'Index', 'Index'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '42';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '21', true, 'Obituary', 'For journals'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '42';
--
-- 43 - Text item identifier type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '43', 'Text item identifier type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Proprietary', 'For example, a publisher''s own identifier'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '43';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'GTIN-13', 'Formerly known as the EAN-13 (unhyphenated)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '43';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'DOI', 'DOI'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '43';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'PII', 'Publisher item identifier'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '43';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'SICI', 'For serial items only'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '43';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'ISBN-13', '(unhyphenated)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '43';
--
-- 44 - Name code type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '44', 'Name code type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Proprietary', 'Proprietary'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '44';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Proprietary', 'DEPRECATED - use 01'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '44';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'DNB publisher identifier', 'Deutsche Nationalbibliothek publisher identifier'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '44';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'B&ouml;rsenverein Verkehrsnummer', 'B&ouml;rsenverein Verkehrsnummer'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '44';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'German ISBN Agency publisher identifier', 'German ISBN Agency publisher identifier'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '44';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'GLN', 'GS1 global location number (formerly EAN location number)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '44';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'SAN', 'Book trade Standard Address Number - US, UK etc'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '44';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Centraal Boekhuis Relatie ID', 'Trading party identifier used in the Netherlands'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '44';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Fondscode Boekenbank', 'Flemish publisher code'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '44';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'Y-tunnus', 'Business Identity Code (Finland)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '44';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '16', true, 'ISNI', 'International Standard Name Identifier'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '44';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'PND', 'Personennamendatei - person name authority file used by Deutsche Nationalbibliothek and in other German-speaking countries'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '44';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'LCCN', 'A control number assigned to a Library of Congress Name Authority record'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '44';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '19', true, 'Japanese Publisher identifier', 'Identifier administered by Japanese ISBN Agency'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '44';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '20', true, 'GKD', 'Gemeinsame K&ouml;rperschaftsdatei-- corporate name authority file (Germany)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '44';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '21', true, 'ORCID', 'Open Researcher and Contributor ID'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '44';
--
-- 45 - Publishing role code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '45', 'Publishing role code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Publisher', 'Publisher'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '45';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Co-publisher', 'Co-publisher'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '45';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Sponsor', 'Sponsor'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '45';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Publisher of original-language version', 'Of a translated work'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '45';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Host/distributor of electronic content', 'Host/distributor of electronic content'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '45';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Published for/on behalf of', 'Published for/on behalf of'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '45';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Published in association with', 'Use also for ''Published in cooperation with'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '45';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Published on behalf of', 'DEPRECATED: use code 06'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '45';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'New or acquiring publisher', 'When ownership of a product or title is transferred from one publisher to another'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '45';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Publishing group', 'The group to which a publisher (publishing role 01) belongs: use only if a publisher has been identified with role code 01'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '45';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Publisher of facsimile original', 'The publisher of the edition of which a product is a facsimile'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '45';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Repackager of prebound edition', 'The repackager of a prebound edition that has been assigned its own identifier. (In the US, a ''prebound edition'' is a book that was previously bound, normally as a paperback, and has been rebound with a library-quality hardcover binding by a supplier other than the original publisher.) Required when the <EditionType> is coded PRB. The original publisher should be named as the ''publisher''.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '45';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Former publisher', 'When ownership of a product or title is transferred from one publisher to another (complement of code 09)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '45';
--
-- 46 - Sales rights type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '46', 'Sales rights type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Sales rights unknown or unstated for any reason', 'May only be used with the ONIX 3 <ROWSalesRightsType> element'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '46';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'For unrestricted sale with exclusive rights in the specified countries or territories', 'For unrestricted sale with exclusive rights in the specified countries or territories'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '46';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'For unrestricted sale with non-exclusive rights in the specified countries or territories', 'For unrestricted sale with non-exclusive rights in the specified countries or territories'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '46';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Not for sale in the specified countries or territories (reason unspecified)', 'Not for sale in the specified countries or territories (reason unspecified)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '46';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Not for sale in the specified countries (but publisher holds exclusive rights in those countries or territories)', 'Not for sale in the specified countries (but publisher holds exclusive rights in those countries or territories)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '46';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Not for sale in the specified countries (publisher holds non-exclusive rights in those countries or territories)', 'Not for sale in the specified countries (publisher holds non-exclusive rights in those countries or territories)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '46';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Not for sale in the specified countries (because publisher does not hold rights in those countries or territories)', 'Not for sale in the specified countries (because publisher does not hold rights in those countries or territories)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '46';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'For sale with exclusive rights in the specified countries or territories (sales restriction applies)', 'Only for use with ONIX 3'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '46';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'For sale with non-exclusive rights in the specified countries or territories (sales restriction applies)', 'Only for use with ONIX 3'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '46';
--
-- 47 - Rights region
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '47', 'Rights region',
           true, true, 'CodeTablesONIX30Char3', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '000', true, 'World', 'World'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '47';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '001', true, 'World except territories specified elsewhere in rights statements', 'World except territories specified elsewhere in rights statements'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '47';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '002', true, 'UK airports', 'UK airports'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '47';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '003', true, 'UK ''open market''', 'Use when an open market edition is published under its own ISBN'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '47';
--
-- 48 - Measure type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '48', 'Measure type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Height', 'For a book, the spine height when standing on a shelf. For a folded map, the height when folded. In general, the height of a product in the form in which it is presented or packaged for retail sale.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '48';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Width', 'For a book, the horizontal dimension of the cover when standing upright. For a folded map, the width when folded. In general, the width of a product in the form in which it is presented or packaged for retail sale.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '48';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Thickness', 'For a book, the thickness of the spine. For a folded map, the thickness when folded. In general, the thickness or depth of a product in the form in which it is presented or packaged for retail sale.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '48';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Page trim height', 'Not recommended for general use'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '48';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Page trim width', 'Not recommended for general use'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '48';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Unit weight', 'Unit weight'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '48';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Diameter (sphere)', 'Of a globe, for example'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '48';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Unfolded/unrolled sheet height', 'The height of a folded or rolled sheet map, poster etc when unfolded'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '48';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Unfolded/unrolled sheet width', 'The width of a folded or rolled sheet map, poster etc when unfolded'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '48';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Diameter (tube or cylinder)', 'The diameter of the cross-section of a tube or cylinder, usually carrying a rolled sheet product. Use 01 ''height'' for the height or length of the tube.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '48';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Rolled sheet package side measure', 'The length of a side of the cross-section of a long triangular or square package, usually carrying a rolled sheet product. Use 01 ''height'' for the height or length of the package.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '48';
--
-- 50 - Measure unit code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '50', 'Measure unit code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'cm', true, 'Centimeters', 'Centimeters'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '50';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'gr', true, 'Grams', 'Grams'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '50';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'in', true, 'Inches (US)', 'Inches (US)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '50';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'kg', true, 'Kilograms', 'Kilograms'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '50';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'lb', true, 'Pounds (US)', 'Pounds (US)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '50';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'mm', true, 'Millimeters', 'Millimeters'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '50';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'oz', true, 'Ounces (US)', 'Ounces (US)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '50';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'px', true, 'Pixels', 'Pixels'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '50';
--
-- 51 - Product relation code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '51', 'Product relation code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Unspecified', '<Product> is related to <RelatedProduct> in a way that cannot be specified by another code value'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Includes', '<Product> includes <RelatedProduct>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Is part of', '<Product> is part of <RelatedProduct>: use for ''also available as part of'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Replaces', '<Product> replaces, or is new edition of, <RelatedProduct>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Replaced by', '<Product> is replaced by, or has new edition, <RelatedProduct> (reciprocal of code 03)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Alternative format', '<Product> is available in an alternative format as <RelatedProduct> - indicates an alternative format of the same content which is or may be available.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Has ancillary product', '<Product> has an ancillary or supplementary product <RelatedProduct>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Is ancillary to', '<Product> is ancillary or supplementary to <RelatedProduct>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Is remaindered as', '<Product> is remaindered as <RelatedProduct>, when a remainder merchant assigns its own identifier to the product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Is remainder of', '<Product> was originally sold as <RelatedProduct>, indicating the publisher''s original identifier for a title which is offered as a remainder under a different identifier (reciprocal of code 09)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Is other-language version of', '<Product> is an other-language version of <RelatedProduct>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Publisher''s suggested alternative', '<Product> has a publisher''s suggested alternative <RelatedProduct>, which does not, however, carry the same content (cf 05 and 06)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Epublication based on (print product)', '<Product> is an epublication based on printed product <RelatedProduct>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'Epublication is distributed as', '<Product> is an epublication ''rendered'' as <RelatedProduct>: use in ONIX 2.1 only when the <Product> record describes a package of electronic content which is available in multiple ''renderings'' (coded 000 in <EpubTypeCode>): NOT USED in ONIX 3.0'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'Epublication is a rendering of', '<Product> is a ''rendering'' of an epublication <RelatedProduct>: use in ONIX 2.1 only when the <Product> record describes a specific rendering of an epublication content package, to identify the package: NOT USED in ONIX 3.0'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '16', true, 'POD replacement for', '<Product> is a POD replacement for <RelatedProduct>. <RelatedProduct> is an out-of-print product replaced by a print-on-demand version under a new ISBN.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'Replaced by POD', '<Product> is replaced by POD <RelatedProduct>. <RelatedProduct> is a print-on-demand replacement, under a new ISBN, for an out-of-print <Product> (reciprocal of code 16).'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'Is special edition of', '<Product> is a special edition of <RelatedProduct>. Used for a special edition (German: Sonderausgabe) with different cover, binding etc - more than ''alternative format'' - which may be available in limited quantity and for a limited time'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '19', true, 'Has special edition', '<Product> has a special edition <RelatedProduct> (reciprocal of code 18)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '20', true, 'Is prebound edition of', '<Product> is a prebound edition of <RelatedProduct> (in the US, a prebound edition is ''a book that was previously bound and has been rebound with a library quality hardcover binding. In almost all commercial cases, the book in question began as a paperback.'')'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '21', true, 'Is original of prebound edition', '<Product> is the regular edition of which <RelatedProduct> is a prebound edition'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '22', true, 'Product by same author', '<Product> and <RelatedProduct> have a common author'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '23', true, 'Similar product', '<RelatedProduct> is another product that is suggested as similar to <Product> (''if you liked <Product>, you may also like <RelatedProduct>'')'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '24', true, 'Is facsimile of', '<Product> is a facsimile edition of <RelatedProduct>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '25', true, 'Is original of facsimile', '<Product> is the original edition from which a facsimile edition <RelatedProduct> is taken (reciprocal of code 25)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '26', true, 'Is license for', '<Product> is a license for a digital <RelatedProduct>, traded or supplied separately'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '27', true, 'Electronic version available as', '<RelatedProduct> is an electronic version of print <Product> (reciprocal of code 13)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '28', true, 'Enhanced version available as', '<RelatedProduct> is an ''enhanced'' version of <Product>, with additional content. Typically used to link an enhanced e-book to its original ''unenhanced'' equivalent, but not specifically limited to linking e-books - for example, may be used to link illustrated and non-illustrated print books. <Product> and <RelatedProduct> should share the same <ProductForm>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '29', true, 'Basic version available as', '<RelatedProduct> is a basic version of <Product> (reciprocal of code 28). <Product> and <RelatedProduct> should share the same <ProductForm>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '30', true, 'Product in same collection', '<RelatedProduct> and <Product> are part of the same collection (eg two products in same series or set)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
--
-- 52 - Supply-to region code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '52', 'Supply-to region code',
           true, true, 'CodeTablesONIX30Char3', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '004', true, 'UK ''open market''', 'When the same ISBN is used for open market and UK editions'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '52';
--
-- 53 - Returns conditions code type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '53', 'Returns conditions code type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Proprietary', 'Proprietary'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '53';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'French book trade returns conditions code', 'Maintained by CLIL (Commission Interprofessionnel du Livre)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '53';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'BISAC Returnable Indicator code', 'Maintained by BISAC: see List 66'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '53';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'UK book trade returns conditions code', 'NOT CURRENTLY USED - BIC has decided that it will not maintain a code list for this purpose, since returns conditions are usually at least partly based on the trading relationship'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '53';
--
-- 54 - Availability status code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '54', 'Availability status code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AB', true, 'Cancelled', 'Publication abandoned after having been announced'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AD', true, 'Available direct from publisher only', 'Apply direct to publisher, item not available to trade'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CS', true, 'Availability uncertain', 'Check with customer service'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'EX', true, 'No longer stocked by us', 'Wholesaler or vendor only'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'IP', true, 'Available', 'In-print and in stock'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MD', true, 'Manufactured on demand', 'May be accompanied by an estimated average time to supply'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NP', true, 'Not yet published', 'MUST be accompanied by an expected availability date'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NY', true, 'Newly catalogued, not yet in stock', 'Wholesaler or vendor only: MUST be accompanied by expected availability date'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'OF', true, 'Other format available', 'This format is out of print, but another format is available: should be accompanied by an identifier for the alternative product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'OI', true, 'Out of stock indefinitely', 'No current plan to reprint'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'OP', true, 'Out of print', 'Discontinued, deleted from catalogue'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'OR', true, 'Replaced by new edition', 'This edition is out of print, but a new edition has been or will soon be published: should be accompanied by an identifier for the new edition'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PP', true, 'Publication postponed indefinitely', 'Publication has been announced, and subsequently postponed with no new date'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RF', true, 'Refer to another supplier', 'Supply of this item has been transferred to another publisher or distributor: should be accompanied by an identifier for the new supplier'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RM', true, 'Remaindered', 'Remaindered'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RP', true, 'Reprinting', 'MUST be accompanied by an expected availability date'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RU', true, 'Reprinting, undated', 'Use instead of RP as a last resort, only if it is really impossible to give an expected availability date'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TO', true, 'Special order', 'This item is not stocked but has to be specially ordered from a supplier (eg import item not stocked locally): may be accompanied by an estimated average time to supply'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TP', true, 'Temporarily out of stock because publisher cannot supply', 'Wholesaler or vendor only'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TU', true, 'Temporarily unavailable', 'MUST be accompanied by an expected availability date'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'UR', true, 'Unavailable, awaiting reissue', 'The item is out of stock but will be reissued under the same ISBN: MUST be accompanied by an expected availability date and by the reissue date in the <Reissue> composite. See notes on the <Reissue> composite for details on treatment of availability status during reissue.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'WR', true, 'Will be remaindered as of (date)', 'MUST be accompanied by the remainder date'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'WS', true, 'Withdrawn from sale', 'Typically, withdrawn indefinitely for legal reasons'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '54';
--
-- 55 - Date format
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '55', 'Date format',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'YYYYMMDD', 'Year month day (default)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '55';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'YYYYMM', 'Year and month'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '55';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'YYYYWW', 'Year and week number'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '55';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'YYYYQ', 'Year and quarter (Q = 1, 2, 3, 4)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '55';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'YYYYS', 'Year and season (S = 1, 2, 3, 4, with 1 = ''Spring'')'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '55';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'YYYY', 'Year'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '55';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'YYYYMMDDYYYYMMDD', 'Spread of exact dates'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '55';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'YYYYMMYYYYMM', 'Spread of months'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '55';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'YYYYWWYYYYWW', 'Spread of week numbers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '55';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'YYYYQYYYYQ', 'Spread of quarters'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '55';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'YYYYSYYYYS', 'Spread of seasons'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '55';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'YYYYYYYY', 'Spread of years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '55';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Text string', 'For complex, approximate or uncertain dates'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '55';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '20', true, 'YYYYMMDD', 'Year month day (Hijri calendar)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '55';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '21', true, 'YYYYMM', 'Year and month (Hijri calendar)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '55';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '25', true, 'YYYY', 'Year (Hijri calendar)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '55';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '32', true, 'Text string', 'For complex, approximate or uncertain dates (Hijri calendar), text would be in Arabic script'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '55';
--
-- 56 - Audience restriction flag
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '56', 'Audience restriction flag',
           true, true, 'CodeTablesONIX30Char1', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'R', true, 'Restrictions apply, see note', 'Restrictions apply, see note'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '56';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'X', true, 'Indiziert', 'Indexed for the German market - in Deutschland indiziert'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '56';
--
-- 57 - Unpriced item type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '57', 'Unpriced item type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Free of charge', 'Free of charge'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '57';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Price to be announced', 'Price to be announced'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '57';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Not sold separately', 'Not sold separately'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '57';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Contact supplier', 'May be used for books that do not carry a recommended retail price, when an ONIX file is ''broadcast'' rather than sent one-to-one to a single trading partner; or for digital products offered on subscription or with pricing which is too complex to specify in ONIX'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '57';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Not sold as set', 'When a collection that is not sold as a set nevertheless has its own ONIX record'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '57';
--
-- 58 - Price type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '58', 'Price type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'RRP excluding tax', 'RRP excluding any sales tax or value-added tax'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'RRP including tax', 'RRP including sales or value-added tax if applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Fixed retail price excluding tax', 'In countries where retail price maintenance applies by law to certain products: not used in USA'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Fixed retail price including tax', 'In countries where retail price maintenance applies by law to certain products: not used in USA'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Supplier''s net price excluding tax', 'Unit price charged by supplier to reseller excluding any sales tax or value-added tax: goods for retail sale'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Supplier''s net price excluding tax: rental goods', 'Unit price charged by supplier to reseller / rental outlet, excluding any sales tax or value-added tax: goods for rental (used for video and DVD)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Supplier''s net price including tax', 'Unit price charged by supplier to reseller including any sales tax or value-added tax if applicable: goods for retail sale'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Supplier''s alternative net price excluding tax', 'Unit price charged by supplier to a specified class of reseller excluding any sales tax or value-added tax: goods for retail sale (this value is for use only in countries, eg Finland, where trade practice requires two different net prices to be listed for different classes of resellers, and where national guidelines specify how the code should be used)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Supplier''s alternative net price including tax', 'Unit price charged by supplier to a specified class of reseller including any sales tax or value-added tax: goods for retail sale (this value is for use only in countries, eg Finland, where trade practice requires two different net prices to be listed for different classes of resellers, and where national guidelines specify how the code should be used)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Special sale RRP excluding tax', 'Special sale RRP excluding any sales tax or value-added tax'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Special sale RRP including tax', 'Special sale RRP including sales or value-added tax if applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Special sale fixed retail price excluding tax', 'In countries where retail price maintenance applies by law to certain products: not used in USA'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'Special sale fixed retail price including tax', 'In countries where retail price maintenance applies by law to certain products: not used in USA'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'Supplier''s net price for special sale excluding tax', 'Unit price charged by supplier to reseller for special sale excluding any sales tax or value-added tax'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '21', true, 'Pre-publication RRP excluding tax', 'Pre-publication RRP excluding any sales tax or value-added tax'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '22', true, 'Pre-publication RRP including tax', 'Pre-publication RRP including sales or value-added tax if applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '23', true, 'Pre-publication fixed retail price excluding tax', 'In countries where retail price maintenance applies by law to certain products: not used in USA'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '24', true, 'Pre-publication fixed retail price including tax', 'In countries where retail price maintenance applies by law to certain products: not used in USA'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '25', true, 'Supplier''s pre-publication net price excluding tax', 'Unit price charged by supplier to reseller pre-publication excluding any sales tax or value-added tax'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '31', true, 'Freight-pass-through RRP excluding tax', 'In the US, books are sometimes supplied on ''freight-pass-through'' terms, where a price that is different from the RRP is used as the basis for calculating the supplier''s charge to a reseller. To make it clear when such terms are being invoked, code 31 is used instead of code 01 to indicate the RRP. Code 32 is used for the ''billing price''.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '32', true, 'Freight-pass-through billing price excluding tax', 'When freight-pass-through terms apply, the price on which the supplier''s charge to a reseller is calculated, ie the price to which trade discount terms are applied. See also code 31.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '41', true, 'Publishers retail price excluding tax', 'For a product supplied on agency terms, the retail price set by the publisher, excluding any sales tax or value-added tax'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '42', true, 'Publishers retail price including tax', 'For a product supplied on agency terms, the retail price set by the publisher, including sales or value-added tax if applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '58';
--
-- 59 - Price type qualifier
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '59', 'Price type qualifier',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Member/subscriber price', 'Price applies to a designated group membership'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '59';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Export price', 'Price applies to sales outside the territory in which the supplier is located'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '59';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Reduced price applicable when the item is purchased as part of a set (or series, or collection)', 'Use in cases where there is no combined price, but a lower price is offered for each part if the whole set / series / collection is purchased (either at one time, as part of a continuing commitment, or in a single purchase)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '59';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Voucher price', 'In the Netherlands (or any other market where similar arrangements exist): a reduced fixed price available for a limited time on presentation of a voucher published in a specified medium, eg a newspaper. Should be accompanied by Price Type code 13 and additional detail in <PriceTypeDescription>, and by validity dates in <PriceEffectiveFrom> and <PriceEffectiveUntil> (ONIX 2.1) or in the <PriceDate> composite (ONIX 3.0).'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '59';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Consumer price', 'Price for individual consumer sale only'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '59';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Corporate price', 'Price for sale to libraries or other corporate or institutional customers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '59';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Reservation order price', 'Price valid for a specified period prior to publication. Orders placed prior to the end of the period are guaranteed to be delivered to the retailer before the nominal publication date. The price may or may not be different from the ''normal'' price, which carries no such delivery guarantee. Must be accompanied by a <PriceEffectiveUntil> date (or equivalent <PriceDate> composite in ONIX 3), and should also be accompanied by a ''normal'' price'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '59';
--
-- 60 - Unit of pricing code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '60', 'Unit of pricing code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Per copy of whole product', 'Default'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '60';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Per page for printed loose-leaf content only', 'Per page for printed loose-leaf content only'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '60';
--
-- 61 - Price status code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '61', 'Price status code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Unspecified', 'Default'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '61';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Provisional', 'Provisional'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '61';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Firm', 'Firm'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '61';
--
-- 62 - Tax rate, coded
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '62', 'Tax rate, coded',
           true, true, 'CodeTablesONIX30Char1', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'H', true, 'Higher rate', 'Specifies that tax is applied at a higher rate than standard'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '62';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P', true, 'Tax paid at source (Italy)', 'Under Italian tax rules, VAT on books may be paid at source by the publisher, and subsequent transactions through the supply chain are tax-exempt.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '62';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'R', true, 'Lower rate', 'Specifies that tax is applied at a lower rate than standard'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '62';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'S', true, 'Standard rate', 'Standard rate'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '62';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Z', true, 'Zero-rated', 'Zero-rated'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '62';
--
-- 64 - Publishing status
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '64', 'Publishing status',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Unspecified', 'Status is not specified (as distinct from unknown): the default if the <PublishingStatus> element is not sent. Also to be used in applications where the element is considered mandatory, but the sender of the ONIX message chooses not to pass on status information.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '64';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Cancelled', 'The product was announced, and subsequently abandoned; the <PublicationDate> element must not be sent.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '64';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Forthcoming', 'Not yet published, must be accompanied by expected date in <PublicationDate>.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '64';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Postponed indefinitely', 'The product was announced, and subsequently postponed with no expected publication date; the <Publication Date> element (ONIX 2.1), or its equivalent as a date composite in ONIX 3.0, must not be sent.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '64';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Active', 'The product was published, and is still active in the sense that the publisher will accept orders for it, though it may or may not be immediately available, for which see <SupplyDetail>.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '64';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'No longer our product', 'Ownership of the product has been transferred to another publisher (with details of acquiring publisher if possible in PR.19 (ONIX 2.1) OR P.19 (ONIX 3.0)).'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '64';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Out of stock indefinitely', 'The product was active, but is now inactive in the sense that (a) the publisher cannot fulfil orders for it, though stock may still be available elsewhere in the supply chain, and (b) there are no current plans to bring it back into stock. Use this code for ''reprint under consideration''. Code 06 does not specifically imply that returns are or are not still accepted.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '64';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Out of print', 'The product was active, but is now permanently inactive in the sense that (a) the publisher will not accept orders for it, though stock may still be available elsewhere in the supply chain, and (b) the product will not be made available again under the same ISBN. Code 07 normally implies that the publisher will not accept returns beyond a specified date.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '64';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Inactive', 'The product was active, but is now permanently or indefinitely inactive in the sense that the publisher will not accept orders for it, though stock may still be available elsewhere in the supply chain. Code 08 covers both of codes 06 and 07, and may be used where the distinction between those values is either unnecessary or meaningless.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '64';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Unknown', 'The sender of the ONIX record does not know the current publishing status.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '64';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Remaindered', 'The product is no longer available from the current publisher, under the current ISBN, at the current price. It may be available to be traded through another channel. A Publishing Status code 10 ''Remaindered'' usually but not always means that the publisher has decided to sell off excess inventory of the book. Copies of books that are remaindered are often made available in the supply chain at a reduced price. However, such remainders are often sold under a product identifier that differs from the ISBN on the full-priced copy of the book. A Publishing Status code 10 ''Remaindered'' on a given product record may or may not be followed by a Publishing Status code 06 ''Out of Stock Indefinitely'' or 07 ''Out of Print'': the practise varies from one publisher to another. Some publishers may revert to a Publishing Status code 04 ''Active'' if a desired inventory level on the product in question has subsequently been reached. No change in rights should ever be inferred from this (or any other) Publishing Status code value.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '64';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Withdrawn from sale', 'Withdrawn, typically for legal reasons or to avoid giving offence'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '64';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Recalled', 'Recalled for reasons of consumer safety'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '64';
--
-- 65 - Product availability
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '65', 'Product availability',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Cancelled', 'Cancelled: product was announced, and subsequently abandoned'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Not yet available', 'Not yet available (requires <ExpectedShipDate>, except in exceptional circumstances where no date is known)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Awaiting stock', 'Not yet available, but will be a stock item when available (requires <ExpectedShipDate>, except in exceptional circumstances where no date is known). Used particularly for imports which have been published in the country of origin but have not yet arrived in the importing country.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Not yet available, will be POD', 'Not yet available, to be published as print-on-demand only. May apply either to a POD successor to an existing conventional edition, when the successor will be published under a different ISBN (normally because different trade terms apply); or to a title that is being published as a POD original.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '20', true, 'Available', 'Available from us (form of availability unspecified)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '21', true, 'In stock', 'Available from us as a stock item'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '22', true, 'To order', 'Available from us as a non-stock item, by special order'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '23', true, 'POD', 'Available from us by print-on-demand'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '30', true, 'Temporarily unavailable', 'Temporarily unavailable: temporarily unavailable from us (reason unspecified) (requires expected date, either as <ExpectedShipDate> (ONIX 2.1) or as <SupplyDate> with <SupplyDateRole> coded ''08'' (ONIX 3.0), except in exceptional circumstances where no date is known)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '31', true, 'Out of stock', 'Stock item, temporarily out of stock (requires expected date, either as <ExpectedShipDate> (ONIX 2.1) or as <SupplyDate> with <SupplyDateRole> coded ''08'' (ONIX 3.0), except in exceptional circumstances where no date is known)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '32', true, 'Reprinting', 'Temporarily unavailable, reprinting (requires expected date, either as <ExpectedShipDate> (ONIX 2.1) or as <SupplyDate> with <SupplyDateRole> coded ''08'' (ONIX 3.0), except in exceptional circumstances where no date is known)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '33', true, 'Awaiting reissue', 'Temporarily unavailable, awaiting reissue (requires the <Reissue> composite, and expected date, either as <ExpectedShipDate> (ONIX 2.1) or as <SupplyDate> with <SupplyDateRole> coded ''08'' (ONIX 3.0), except in exceptional circumstances where no date is known)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '40', true, 'Not available (reason unspecified)', 'Not available from us (for any reason)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '41', true, 'Not available, replaced by new product', 'This product is unavailable, but a successor product or edition is or will be available from us (identify successor in <RelatedProduct>)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '42', true, 'Not available, other format available', 'This product is unavailable, but the same content is or will be available from us in an alternative format (identify other format product in <RelatedProduct>)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '43', true, 'No longer supplied by us', 'Identify new supplier in <NewSupplier> if possible'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '44', true, 'Apply direct', 'Not available to trade, apply direct to publisher'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '45', true, 'Not sold separately', 'Must be bought as part of a set (identify set in <RelatedProduct>)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '46', true, 'Withdrawn from sale', 'May be for legal reasons or to avoid giving offence'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '47', true, 'Remaindered', 'Remaindered'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '48', true, 'Not available, replaced by POD', 'Out of print, but a print-on-demand edition is or will be available under a different ISBN. Use only when the POD successor has a different ISBN, normally because different trade terms apply.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '49', true, 'Recalled', 'Recalled for reasons of consumer safety'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '50', true, 'Not sold as set', 'When a collection that is not sold as a set nevertheless has its own ONIX record'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '51', true, 'Not available, publisher indicates OP', 'This product is unavailable, no successor product or alternative format is available or planned. Use this code only when the publisher has indicated the product is out of print.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '52', true, 'Not available, publisher no longer sells product in this market', 'This product is unavailable in this market, no successor product or alternative format is available or planned. Use this code when a publisher has indicated the product is permanently unavailable (in this market) while remaining available elsewhere.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '97', true, 'No recent update received', 'Sender has not received any recent update for this product from the publisher/supplier (for use when the sender is a data aggregator): the definition of ''recent'' must be specified by the aggregator, or by agreement between parties to an exchange'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '98', true, 'No longer receiving updates', 'Sender is no longer receiving any updates from the publisher/supplier of this product (for use when the sender is a data aggregator)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '99', true, 'Contact supplier', 'Availability not known to sender'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '65';
--
-- 66 - BISAC returnable indicator
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '66', 'BISAC returnable indicator',
           true, true, 'CodeTablesONIX30Char1', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Y', true, 'Yes, returnable, full copies only', 'Yes, returnable, full copies only'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '66';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'N', true, 'No, not returnable', 'No, not returnable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '66';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'C', true, 'Conditional', 'Contact publisher for requirements and/or authorization'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '66';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'S', true, 'Yes, returnable, stripped cover', 'Yes, returnable, stripped cover'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '66';
--
-- 67 - Market date role
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '67', 'Market date role',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Publication date', 'The nominal date of publication in this market. If there is a strict embargo on retail sales before the expected date, it should be specified separately as an embargo date.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '67';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Embargo date', 'If there is an embargo on retail sales in this market before a certain date, the date from which the embargo is lifted and retail sales are permitted'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '67';
--
-- 68 - Market publishing status
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '68', 'Market publishing status',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Unspecified', 'Status is not specified (as distinct from unknown): the default if the <MarketPublishingStatus> element is not sent.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '68';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Cancelled', 'The product was announced for publication in this market, and subsequently abandoned.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '68';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Forthcoming', 'Not yet published in this market, should be accompanied by expected local publication date..'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '68';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Postponed indefinitely', 'The product was announced for publication in this market, and subsequently postponed with no expected local publication date.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '68';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Active', 'The product was published in this market, and is still active in the sense that the publisher will accept orders for it, though it may or may not be immediately available, for which see <SupplyDetail>.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '68';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'No longer our product', 'Responsibility for the product in this market has been transferred elsewhere.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '68';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Out of stock indefinitely', 'The product was active, but is now inactive in the sense that (a) no further stock is expected to be made available in this market, though stock may still be available elsewhere in the supply chain, and (b) there are no current plans to bring it back into stock.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '68';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Out of print', 'The product was active, but is now permanently inactive in the sense that (a) no further stock is expected to be made available in this market, though stock may still be available elsewhere in the supply chain, and (b) the product will not be made available again under the same ISBN.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '68';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Inactive', 'The product was active, but is now permanently or indefinitely inactive in the sense that no further stock is expected to be made available in this market, though stock may still be available elsewhere in the supply chain. Code 08 covers both of codes 06 and 07, and may be used where the distinction between those values is either unnecessary or meaningless.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '68';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Unknown', 'The sender of the ONIX record does not know the current publishing status in this market.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '68';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Remaindered', 'The product is no longer available in this market from the local publisher, under the current ISBN, at the current price. It may be available to be traded through another channel, usually at a reduced price.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '68';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Withdrawn from sale', 'Withdrawn from sale in this market, typically for legal reasons'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '68';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Not available in this market', 'Either no rights are held for the product in this market, or for other reasons the publisher has decided not to make it available in this market'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '68';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Active, but not sold separately', 'The product is published in this market and active but, as a publishing decision, it is not sold separately - only in an assembly or as part of a package'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '68';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'Active, with market restrictions', 'The product is published in this market and active, but is not available to all customer types, typically because the market is split between exclusive sales agents for different market segments. In ONIX 2.1, should be accompanied by a free-text statement in <MarketRestrictionDetail> describing the nature of the restriction. In ONIX 3.0, the <SalesRestriction> composite in Group P.24 should be used.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '68';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'Recalled for reasons of consumer safety', 'Recalled for reasons of consumer safety'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '68';
--
-- 69 - Agent role
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '69', 'Agent role',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Exclusive sales agent', 'Publisher''s exclusive sales agent in a specified territory'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '69';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Non-exclusive sales agent', 'Publisher''s non-exclusive sales agent in a specified territory'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '69';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Local publisher', 'Publisher for a specified territory'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '69';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Sales agent', 'Publisher''s sales agent in a specific territory. Use only where exclusive / non-exclusive status is not known. Prefer 05 or 06 as appropriate, where possible.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '69';
--
-- 70 - Stock quantity code type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '70', 'Stock quantity code type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Proprietary', 'Proprietary'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '70';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'APA stock quantity code', 'Code scheme defined by the Australian Publishers Association'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '70';
--
-- 71 - Sales restriction type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '71', 'Sales restriction type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Unspecified - see text', 'Restriction must be described in <SalesRestrictionDetail> (ONIX 2.1) or <SalesRestrictionNote> (ONIX 3.0)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '71';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Retailer exclusive / own brand', 'For sale only through designated retailer. Retailer must be identified or named in an instance of the <SalesOutlet> composite. Use only when it is not possible to assign the more explicit code 04 or 05.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '71';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Office supplies edition', 'For editions sold only though office supplies wholesalers. Retailer(s) and/or distributor(s) may be identified or named in an instance of the <SalesOutlet> composite.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '71';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Internal publisher use only: do not list', 'For an ISBN that is assigned for a publisher''s internal purposes'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '71';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Retailer exclusive', 'For sale only through designated retailer, though not under retailer''s own brand/imprint. Retailer must be identified or named in an instance of the <SalesOutlet> composite.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '71';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Retailer own brand', 'For sale only through designated retailer under retailer''s own brand/imprint. Retailer must be identified or named in an instance of the <SalesOutlet> composite.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '71';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Library edition', 'For sale to libraries only; not for sale through retail trade'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '71';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Schools only edition', 'For sale directly to schools only; not for sale through retail trade'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '71';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Indiziert', 'Indexed for the German market - in Deutschland indiziert'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '71';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Not for sale to libraries', 'Expected to apply in particular to digital products for consumer sale where the publisher does not permit the product to be supplied to libraries who provide an ebook loan service'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '71';
--
-- 72 - Thesis type code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '72', 'Thesis type code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Habilitationsschrift', 'Professorial dissertation (thesis for postdoctoral lecturing qualification)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '72';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Dissertationsschrift', 'Doctoral thesis'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '72';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Staatsexamensarbeit', 'State examination thesis'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '72';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Magisterarbeit', 'Magisters degree thesis'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '72';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Diplomarbeit', 'Diploma degree thesis'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '72';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Bachelorarbeit', 'Bachelors degree thesis'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '72';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Masterarbeit', 'Masters degree thesis'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '72';
--
-- 73 - Website role
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '73', 'Website role',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Unspecified, see website description', 'Unspecified, see website description'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Publisher''s corporate website', 'See also codes 17 and 18'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Publisher''s website for a specified work', 'A publisher''s informative and/or promotional webpage relating to a specified work (book, journal, online resource or other publication type)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Online hosting service home page', 'A webpage giving access to an online content hosting service as a whole'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Journal home page', 'A webpage giving general information about a serial, in print or electronic format or both.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Online journal ''available contents'' page', 'A webpage giving direct access to the content that is available online for a specified serial version.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Contributor''s own website', 'A webpage maintained by an author or other contributor about her/his publications and personal background'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Publisher''s website relating to specified contributor', 'A publisher''s webpage devoted to a specific author or other contributor'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Other publisher''s website relating to specified contributor', 'A webpage devoted to a specific author or other contributor, and maintained by a publisher other than the publisher of the item described in the ONIX record'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Third-party website relating to specified contributor', 'A webpage devoted to a specific author or other contributor, and maintained by a third party (eg a fan site)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Contributor''s own website for specified work', 'A webpage maintained by an author or other contributor and specific to an individual work'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Other publisher''s website relating to specified work', 'A webpage devoted to an individual work, and maintained by a publisher other than the publisher of the item described in the ONIX record'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Third-party website relating to specified work', 'A webpage devoted to an individual work, and maintained by a third party (eg a fan site)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Contributor''s own website for group or series of works', 'A webpage maintained by an author or other contributor and specific to a group or series of works'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'Publisher''s website relating to group or series of works', 'A publisher''s webpage devoted to a group or series of works'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'Other publisher''s website relating to group or series of works', 'A webpage devoted to a group or series of works, and maintained by a publisher other than the publisher of the item described in the ONIX record'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '16', true, 'Third-party website relating to group or series of works (eg a fan site)', 'A webpage devoted to a group or series of works, and maintained by a third party (eg a fan site)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'Publisher''s B2B website', 'Use instead of code 01 to specify a publisher''s website for trade users'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'Publisher''s B2C website', 'Use instead of code 01 to specify a publisher''s website for consumers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '23', true, 'Author blog', 'Author blog'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '24', true, 'Web page for author presentation / commentary', 'Web page for author presentation / commentary'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '25', true, 'Web page for author interview', 'Web page for author interview'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '26', true, 'Web page for author reading', 'Web page for author reading'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '27', true, 'Web page for cover material', 'Web page for cover material'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '28', true, 'Web page for sample content', 'Web page for sample content'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '29', true, 'Web page for full content', 'Use this value in the <Website> composite in <SupplyDetail> when sending a link to a webpage at which a digital product is available for download and/or online access'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '30', true, 'Web page for other commentary / discussion', 'Web page for other commentary / discussion'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '31', true, 'Transfer-URL', 'URL needed by the German National Library for direct access, harvesting and storage of an electronic resource.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '32', true, 'DOI Website Link', 'Link needed by German Books in Print (VLB) for DOI registration and ONIX DOI conversion.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '33', true, 'Supplier''s corporate website', 'A corporate website operated by a distributor or other supplier (not the publisher)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '34', true, 'Supplier''s B2B website', 'A website operated by a distributor or other supplier (not the publisher) and aimed at trade customers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '35', true, 'Supplier''s B2C website', 'A website operated by a distributor or other supplier (not the publisher) and aimed at consumers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '36', true, 'Supplier''s website for a specified work', 'A distributor or supplier''s webpage describing a specified work'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '37', true, 'Supplier''s B2B website for a specified work', 'A distributor or supplier''s webpage describing a specified work, and aimed at trade customers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '38', true, 'Supplier''s B2C website for a specified work', 'A distributor or supplier''s webpage describing a specified work, and aimed at consumers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '39', true, 'Supplier''s website for a group or series of works', 'A distributor or supplier''s webpage describing a group or series of works'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '73';
--
-- 75 - Person date role
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '75', 'Person date role',
           true, true, 'CodeTablesONIX30Char3', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '007', true, 'Date of birth', 'Date of birth'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '75';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '008', true, 'Date of death', 'Date of death'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '75';
--
-- 76 - Product form feature value - DVD region codes
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '76', 'Product form feature value - DVD region codes',
           true, true, 'CodeTablesONIX30Char1', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '0', true, 'All regions', 'DVD or Blu-Ray'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '76';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '1', true, 'DVD region 1', 'US, US Territories, Canada'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '76';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '2', true, 'DVD region 2', 'Japan, Europe, South Africa and Middle East (including Egypt)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '76';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '3', true, 'DVD region 3', 'Southeast Asia, Hong Kong, Macau, South Korea, and Taiwan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '76';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '4', true, 'DVD region 4', 'Australia, New Zealand, Pacific Islands, Central America, Mexico, South America and the Caribbean'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '76';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '5', true, 'DVD region 5', 'Eastern Europe (former Soviet Union), Indian subcontinent, Africa, North Korea and Mongolia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '76';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '6', true, 'DVD region 6', 'People''s Republic of China (except Macau and Hong Kong)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '76';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '7', true, 'DVD region 7', 'Reserved for future use'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '76';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '8', true, 'DVD region 8', 'International venues: aircraft, cruise ships etc'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '76';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A', true, 'Blu-Ray region A', 'North America, Central America, South America, Japan, Taiwan, North Korea, South Korea, Hong Kong, and Southeast Asia.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '76';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B', true, 'Blu-Ray region B', 'Most of Europe, Greenland, French territories, Middle East, Africa, Australia, and New Zealand, plus all of Oceania.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '76';
INSERT INTO CodeTablesONIX30Char1(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'C', true, 'Blu-Ray region C', 'India, Bangladesh, Nepal, Mainland China, Pakistan, Russia, Ukraine, Belarus, Central, and South Asia.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '76';
--
-- 77 - North American school or college grade
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '77', 'North American school or college grade',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P', true, 'Preschool', 'Age typically 0-4 years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'K', true, 'Kindergarten', 'Age typically 5 years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '1', true, 'First Grade', 'Age typically 6 years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '2', true, 'Second Grade', 'Age typically 7 years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '3', true, 'Third Grade', 'Age typically 8 years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '4', true, 'Fourth Grade', 'Age typically 9 years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '5', true, 'Fifth Grade', 'Age typically 10 years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '6', true, 'Sixth Grade', 'Age typically 11 years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '7', true, 'Seventh Grade', 'Age typically 12 years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '8', true, 'Eighth Grade', 'Age typically 13 years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '9', true, 'Ninth Grade', 'High School Freshman - age typically 14 years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Tenth Grade', 'High School Sophomore - age typically 15 years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Eleventh Grade', 'High School Junior - age typically 16 years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Twelfth Grade', 'High School Senior - age typically 17 years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'College Freshman', 'Age typically 18 years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'College Sophomore', 'Age typically 19 years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'College Junior', 'Age typically 20 years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '16', true, 'College Senior', 'Age typically 21 years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'College Graduate Student', 'Age typically 22+ years'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '77';
--
-- 78 - Product form detail
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '78', 'Product form detail',
           true, true, 'CodeTablesONIX30Char4', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A101', true, 'CD standard audio format', 'CD ''red book'' format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A102', true, 'SACD super audio format', 'SACD super audio format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A103', true, 'MP3 format', 'MP3 format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A104', true, 'WAV format', 'WAV format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A105', true, 'Real Audio format', 'Real Audio format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A106', true, 'WMA', 'Windows Media Audio format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A107', true, 'AAC', 'Advanced Audio Coding format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A108', true, 'Ogg/Vorbis', 'Vorbis audio format in the Ogg container'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A109', true, 'Audible', 'Audio format proprietary to Audible.com'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A110', true, 'FLAC', 'Free lossless audio codec'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A111', true, 'AIFF', 'Audio Interchangeable File Format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A112', true, 'ALAC', 'Apple Lossless Audio Codec'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A201', true, 'DAISY 2: full audio with title only (no navigation)', 'Deprecated, as does not meet DAISY 2 standard. Use conventional audiobook codes instead'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A202', true, 'DAISY 2: full audio with navigation (no text)', 'DAISY 2: full audio with navigation (no text)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A203', true, 'DAISY 2: full audio with navigation and partial text', 'DAISY 2: full audio with navigation and partial text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A204', true, 'DAISY 2: full audio with navigation and full text', 'DAISY 2: full audio with navigation and full text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A205', true, 'DAISY 2: full text with navigation and partial audio', 'Reading systems may provide full audio via text-to-speech'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A206', true, 'DAISY 2: full text with navigation and no audio', 'Reading systems may provide full audio via text-to-speech'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A207', true, 'DAISY 3: full audio with title only (no navigation)', 'Deprecated, as does not meet DAISY 3 standard. Use conventional audiobook codes instead'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A208', true, 'DAISY 3: full audio with navigation (no text)', 'DAISY 3: full audio with navigation (no text)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A209', true, 'DAISY 3: full audio with navigation and partial text', 'DAISY 3: full audio with navigation and partial text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A210', true, 'DAISY 3: full audio with navigation and full text', 'DAISY 3: full audio with navigation and full text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A211', true, 'DAISY 3: full text with navigation and some audio', 'Reading systems may provide full audio via text-to-speech'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A212', true, 'DAISY 3: full text with navigation (no audio)', 'Reading systems may provide full audio via text-to-speech'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B101', true, 'Mass market (rack) paperback', 'In North America, a category of paperback characterized partly by page size (typically 4&frac14; x 7 1/8 inches) and partly by target market and terms of trade. Use with Product Form code BC.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B102', true, 'Trade paperback (US)', 'In North America, a category of paperback characterized partly by page size and partly by target market and terms of trade. AKA ''quality paperback'', and including textbooks. Most paperback books sold in North America except ''mass-market'' (B101) and ''tall rack'' (B107) are correctly described with this code. Use with Product Form code BC.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B103', true, 'Digest format paperback', 'In North America, a category of paperback characterized by page size and generally used for children''s books; use with Product Form code BC. Note: was wrongly shown as B102 (duplicate entry) in Issue 3.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B104', true, 'A-format paperback', 'In UK, a category of paperback characterized by page size (normally 178 x 111 mm approx); use with Product Form code BC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B105', true, 'B-format paperback', 'In UK, a category of paperback characterized by page size (normally 198 x 129 mm approx); use with Product Form code BC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B106', true, 'Trade paperback (UK)', 'In UK, a category of paperback characterized partly by size (usually in traditional hardback dimensions), and often used for paperback originals; use with Product Form code BC (replaces ''C-format'' from former List 8)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B107', true, 'Tall rack paperback (US)', 'In North America, a category of paperback characterised partly by page size and partly by target market and terms of trade; use with Product Form code BC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B108', true, 'A5: Tankobon', 'Japanese hardcover format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B109', true, 'B5: Tankobon', 'Japanese hardcover format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B110', true, 'B6: Tankobon', 'Japanese hardcover format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B111', true, 'A6: Bunko', 'Japanese paperback format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B112', true, 'B40-dori: Shinsho', 'Japanese paperback format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B113', true, 'Pocket (Sweden)', 'A Swedish paperback format, use with Product Form Code BC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B114', true, 'Storpocket (Sweden)', 'A Swedish paperback format, use with Product Form Code BC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B115', true, 'Kartonnage (Sweden)', 'A Swedish hardback format, use with Product Form Code BB'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B116', true, 'Flexband (Sweden)', 'A Swedish softback format, use with Product Form Code BC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B117', true, 'Mook', 'In Japan, a softback book in the format of a magazine but sold like a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B118', true, 'Dwarsligger', 'A softback book in a specially compact proprietary format with pages printed in landscape on very thin paper - see www.dwarsligger.com'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B119', true, '46 size', 'Japanese format: 188x127mm'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B120', true, '46-Henkei size', 'Japanese format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B121', true, 'A4', '297x210mm'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B122', true, 'A4-Henkei size', 'Japanese format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B123', true, 'A5-Henkei size', 'Japanese format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B124', true, 'B5-Henkei size', 'Japanese format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B125', true, 'B6-Henkei size', 'Japanese format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B126', true, 'AB size', 'Japanese format: 257x210mm'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B127', true, 'B7 size', 'Japanese format: 128x81mm'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B128', true, 'Kiku size', 'Japanese format: 218x152mm'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B129', true, 'Kiku-Henkei size', 'Japanese format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B201', true, 'Coloring / join-the-dot book', 'Coloring / join-the-dot book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B202', true, 'Lift-the-flap book', 'Lift-the-flap book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B203', true, 'Fuzzy book', 'DEPRECATED because of ambiguity - use B210, B214 or B215 as appropriate'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B204', true, 'Miniature book', 'Note: was wrongly shown as B203 (duplicate entry) in Issue 3'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B205', true, 'Moving picture / flicker book', 'Moving picture / flicker book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B206', true, 'Pop-up book', 'Pop-up book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B207', true, 'Scented / ''smelly'' book', 'Scented / ''smelly'' book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B208', true, 'Sound story / ''noisy'' book', 'Sound story / ''noisy'' book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B209', true, 'Sticker book', 'Sticker book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B210', true, 'Touch-and-feel book', 'A book whose pages have a variety of textured inserts designed to stimulate tactile exploration: see also B214 and B215'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B211', true, 'Toy / die-cut book', 'DEPRECATED - use B212 or B213 as appropriate'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B212', true, 'Die-cut book', 'A book which is cut into a distinctive non-rectilinear shape and/or in which holes or shapes have been cut internally. (''Die-cut'' is used here as a convenient shorthand, and does not imply strict limitation to a particular production process.)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B213', true, 'Book-as-toy', 'A book which is also a toy, or which incorporates a toy as an integral part. (Do not, however, use B213 for a multiple-item product which includes a book and a toy as separate items.)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B214', true, 'Soft-to-touch book', 'A book whose cover has a soft textured finish, typically over board'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B215', true, 'Fuzzy-felt book', 'A book with detachable felt pieces and textured pages on which they can be arranged'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B221', true, 'Picture book', 'Children''s picture book: use with applicable Product Form code'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B222', true, '''Carousel'' book', '(aka ''Star'' book). Tax treatment of products may differ from that of products with similar codes such as Book as toy or Pop-up book)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B301', true, 'Loose leaf - sheets and binder', 'Use with Product Form code BD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B302', true, 'Loose leaf - binder only', 'Use with Product Form code BD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B303', true, 'Loose leaf - sheets only', 'Use with Product Form code BD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B304', true, 'Sewn', 'AKA stitched; for ''saddle-sewn'', see code B310'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B305', true, 'Unsewn / adhesive bound', 'Including ''perfect bound'', ''glued'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B306', true, 'Library binding', 'Strengthened binding intended for libraries'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B307', true, 'Reinforced binding', 'Strengthened binding, not specifically intended for libraries'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B308', true, 'Half bound', 'Must be accompanied by a code specifiying a material, eg ''half-bound real leather'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B309', true, 'Quarter bound', 'Must be accompanied by a code specifiying a material, eg ''quarter bound real leather'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B310', true, 'Saddle-sewn', 'AKA ''saddle-stitched'' or ''wire-stitched'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B311', true, 'Comb bound', 'Round or oval plastic forms in a clamp-like configuration: use with Product Form code BE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B312', true, 'Wire-O', 'Twin loop metal or plastic spine: use with Product Form code BE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B313', true, 'Concealed wire', 'Cased over Wire-O binding: use with Product Form code BE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B401', true, 'Cloth over boards', 'AKA fabric, linen over boards'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B402', true, 'Paper over boards', 'Paper over boards'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B403', true, 'Leather, real', 'Leather, real'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B404', true, 'Leather, imitation', 'Leather, imitation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B405', true, 'Leather, bonded', 'Leather, bonded'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B406', true, 'Vellum', 'Vellum'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B407', true, 'Plastic', 'DEPRECATED - use new B412 or B413 as appropriate'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B408', true, 'Vinyl', 'DEPRECATED - use new B412 or B414 as appropriate'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B409', true, 'Cloth', 'Cloth, not necessarily over boards - cf B401'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B410', true, 'Imitation cloth', 'Spanish ''simil-tela'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B411', true, 'Velvet', 'Velvet'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B412', true, 'Flexible plastic/vinyl cover', 'AKA ''flexibound'': use with Product Form code BC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B413', true, 'Plastic-covered', 'Plastic-covered'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B414', true, 'Vinyl-covered', 'Vinyl-covered'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B415', true, 'Laminated cover', 'Book, laminating material unspecified: use L101 for "whole product laminated", eg a laminated sheet map or wallchart'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B501', true, 'With dust jacket', 'Type unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B502', true, 'With printed dust jacket', 'Used to distinguish from B503'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B503', true, 'With translucent dust cover', 'With translucent paper or plastic protective cover'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B504', true, 'With flaps', 'For paperback with flaps'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B505', true, 'With thumb index', 'With thumb index'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B506', true, 'With ribbon marker(s)', 'If the number of markers is significant, it can be stated as free text in <ProductFormDescription>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B507', true, 'With zip fastener', 'With zip fastener'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B508', true, 'With button snap fastener', 'With button snap fastener'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B509', true, 'With leather edge lining', 'AKA yapp edge?'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B510', true, 'Rough front', 'With edge trimming such that the front edge is ragged, not neatly and squarely trimmed: AKA deckle edge, feather edge, uncut edge, rough cut'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B601', true, 'Turn-around book', 'A book in which half the content is printed upside-down, to be read the other way round'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B602', true, 'Unflipped manga format', 'Manga with pages and panels in the sequence of the original Japanese, but with Western text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B701', true, 'UK Uncontracted Braille', 'Single letters only. Was formerly identified as UK Braille Grade 1'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B702', true, 'UK Contracted Braille', 'With some letter combinations. Was formerly identified as UK Braille Grade 2'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B703', true, 'US Braille', 'DEPRECATED- use B704/B705 as appropriate instead'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B704', true, 'US Uncontracted Braille', 'US Uncontracted Braille'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B705', true, 'US Contracted Braille', 'US Contracted Braille'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B706', true, 'Unified English Braille', 'Unified English Braille'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B707', true, 'Moon', 'Moon embossed alphabet, used by some print-impaired readers who have difficulties with Braille'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D101', true, 'Real Video format', 'Real Video format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D102', true, 'Quicktime format', 'Quicktime format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D103', true, 'AVI format', 'AVI format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D104', true, 'Windows Media Video format', 'Windows Media Video format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D105', true, 'MPEG-4', 'MPEG-4'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D201', true, 'MS-DOS', 'Use with an applicable Product Form code D*; note that more detail of operating system requirements can be given in a Product Form Feature composite'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D202', true, 'Windows', 'Use with an applicable Product Form code D*; see note on D201'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D203', true, 'Macintosh', 'Use with an applicable Product Form code D*; see note on D201'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D204', true, 'UNIX / LINUX', 'Use with an applicable Product Form code D*; see note on D201'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D205', true, 'Other operating system(s)', 'Use with an applicable Product Form code D*; see note on D201'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D206', true, 'Palm OS', 'Use with an applicable Product Form code D*; see note on D201'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D207', true, 'Windows Mobile', 'Use with an applicable Product Form code D*; see note on D201'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D301', true, 'Microsoft XBox', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D302', true, 'Nintendo Gameboy Color', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D303', true, 'Nintendo Gameboy Advanced', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D304', true, 'Nintendo Gameboy', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D305', true, 'Nintendo Gamecube', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D306', true, 'Nintendo 64', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D307', true, 'Sega Dreamcast', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D308', true, 'Sega Genesis/Megadrive', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D309', true, 'Sega Saturn', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D310', true, 'Sony PlayStation 1', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D311', true, 'Sony PlayStation 2', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D312', true, 'Nintendo Dual Screen', 'Nintendo Dual Screen'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D313', true, 'Sony PlayStation 3', 'Sony PlayStation 3'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D314', true, 'Xbox 360', 'Xbox 360'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D315', true, 'Nintendo Wii', 'Nintendo Wii'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D316', true, 'Sony PlayStation Portable (PSP)', 'Sony PlayStation Portable (PSP)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'L101', true, 'Laminated', 'Whole product laminated (eg laminated map, fold-out chart, wallchart, etc): use B415 for book with laminated cover'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P101', true, 'Desk calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P102', true, 'Mini calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P103', true, 'Engagement calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P104', true, 'Day by day calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P105', true, 'Poster calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P106', true, 'Wall calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P107', true, 'Perpetual calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P108', true, 'Advent calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P109', true, 'Bookmark calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P110', true, 'Student calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P111', true, 'Project calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P112', true, 'Almanac calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P113', true, 'Other calendar', 'A calendar that is not one of the types specified elsewhere: use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P114', true, 'Other calendar or organiser product', 'A product that is associated with or ancillary to a calendar or organiser, eg a deskstand for a calendar, or an insert for an organiser: use with Product Form code PC or PS'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P201', true, 'Hardback (stationery)', 'Stationery item in hardback book format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P202', true, 'Paperback / softback (stationery)', 'Stationery item in paperback/softback book format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P203', true, 'Spiral bound (stationery)', 'Stationery item in spiral-bound book format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P204', true, 'Leather / fine binding (stationery)', 'Stationery item in leather-bound book format, or other fine binding'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'V201', true, 'PAL', 'TV standard for video or DVD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'V202', true, 'NTSC', 'TV standard for video or DVD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'V203', true, 'SECAM', 'TV standard for video or DVD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '78';
--
-- 79 - Product form feature type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '79', 'Product form feature type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Color of cover', 'For Product Form Feature values see code list 98'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Color of page edge', 'For Product Form Feature values see code list 98'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Text font', 'The principal font used for body text, when this is a significant aspect of product description, eg for some Bibles. The accompanying Product Form Feature value is text specifying font size and, if desired, style.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Special cover material', 'For Product Form Feature values see code list 99'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'DVD region', 'For Product Form Feature values see code list 76'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Operating system', 'A computer or handheld device operating system required to use a digital product, with version detail if applicable. The accompanying Product Form Feature Value is a code from List 176. Version detail, when applicable, is carried in Product Form Feature Description.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Other system requirements', 'Other system requirements for a digital product, described by free text in Product Form Feature Description.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'CPSIA choking hazard warning', 'DEPRECATED - use code 12 and List 143'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'CPSIA choking hazard warning', 'Choking hazard warning required by US Consumer Product Safety Improvement Act (CPSIA) of 2008. Required, when applicable, for products sold in the US. The Product Form Feature Value is a code from List 143. Further explanation may be given in Product Form Feature Description.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'EU Toy Safety Hazard Warning', 'Product carries hazard warning required by EU Toy Safety Directive. The Product Form Feature value is a code from List 184, and the exact wording of the warning may be given in Product Form Feature Description.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '30', true, 'Not FSC or PEFC certified', 'Product does not carry FSC or PEFC logo. The product may, however, have a claimed Post-Consumer-Waste (PCW) content (type code 37). The Value and Description elements are not used.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '31', true, 'FSC certified - pure', 'Product carries FSC logo (pure). <ProductFormFeatureValue> is the Chain Of Custody (COC) number printed on the book. Format: two to five letters-COC-six numerals, eg AB-COC-123456 or ABCDE-COC-123456. By definition, a product certified pure does not contain Post-Consumer-Waste (PCW), so type code 31 can only occur on its own.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '32', true, 'FSC certified - mixed sources', 'Product carries FSC logo (mixed sources). <ProductFormFeatureValue> is the Chain Of Custody (COC) number printed on the book. Format: two to five letters-COC-six numerals, eg AB-COC-123456 or ABCDE-COC-123456. May be accompanied by a Post-Consumer-Waste (PCW) percentage value, to be reported in another instance of <ProductFormFeature> with type code 36.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '33', true, 'FSC certified - recycled', 'Product carries FSC logo (recycled). <ProductFormFeatureValue> is the Chain Of Custody (COC) number printed on the book. Format: two to five letters-COC-six numerals, eg AB-COC-123456 or ABCDE-COC-123456. Should be accompanied by a Post-Consumer-Waste (PCW) percentage value, to be reported in another instance of <ProductFormFeature> with type code 36.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '34', true, 'PEFC certified', 'Product carries PEFC logo (certified). <ProductFormFeatureValue> is the Chain Of Custody (COC) number printed on the book. May be accompanied by a Post-Consumer-Waste (PCW) percentage value, to be reported in another instance of <ProductFormFeature> with type code 36.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '35', true, 'PEFC recycled', 'Product carries PEFC logo (recycled). <ProductFormFeatureValue> is the Chain Of Custody (COC) number printed on the book. Should be accompanied by a Post-Consumer-Waste (PCW) percentage value, to be reported in another instance of <ProductFormFeature> with type code 36.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '36', true, 'FSC or PEFC certified Post Consumer Waste (PCW) percentage', 'The percentage of Post-Consumer-Waste (PCW) used in a product where the composition is certified by FSC or PEFC. <ProductFormFeatureValue> is an integer. May occur together with type code 32, 33, 34 or 35.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '37', true, 'Claimed Post Consumer Waste (PCW) percentage', 'The percentage of Post-Consumer-Waste (PCW) claimed to be used in a product where the composition is not certified by FSC or PEFC. <Product FormFeatureValue> is an integer. <ProductFormFeatureDescription> may carry free text supporting the claim. Must be accompanied by type code 30.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '40', true, 'Paper produced by ''green'' technology', 'Product made from paper produced using environmentally-conscious technology. <ProductFormFeatureDescription> may carry free text with a more detailed statement.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '79';
--
-- 80 - Product packaging type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '80', 'Product packaging type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'No outer packaging', 'No packaging, or all smaller items enclosed inside largest item'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Slip-sleeve', 'Slip-sleeve'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Clamshell', 'Clamshell'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Keep case', 'Keep case'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Jewel case', 'Jewel case'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'In box', 'Individual item or set in box with lid: not to be confused with the commonly-used ''boxed set'' - see below'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Slip-cased', 'Slip-case for single item only: German ''Schuber'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Slip-cased set', 'Slip-case for multi-volume set: German ''Kassette''; also commonly referred to as ''boxed set'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Tube', 'Rolled in tube or cylinder: eg sheet map or poster'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Binder', 'Use for miscellaneous items such as slides, microfiche, when presented in a binder'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'In wallet or folder', 'Use for miscellaneous items such as slides, microfiche, when presented in a wallet or folder'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'Long triangular package', 'Long package with triangular cross-section used for rolled sheet maps, posters etc'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '16', true, 'Long square package', 'Long package with square cross-section used for rolled sheet maps, posters, etc'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'Softbox (for DVD)', 'Softbox (for DVD)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'Pouch', 'In pouch, eg teaching materials in a plastic bag or pouch'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '19', true, 'Rigid plastic case', 'In duroplastic or other rigid plastic case, eg for a class set.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '20', true, 'Cardboard case', 'In cardboard case, eg for a class set.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '21', true, 'Shrink-wrapped', 'Use for products or product bundles supplied for retail sale in shrink-wrapped packaging. For shrink-wrapped packs of multiple products for trade supply only, see code XL in List 7.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '22', true, 'Blister pack', 'A pack comprising a pre-formed plastic blister and a printed card with a heat-seal coating'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '23', true, 'Carry case', 'A case with carrying handle, typically for a set of educational books and/or learning materials'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '80';
--
-- 81 - Product content type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '81', 'Product content type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Text (eye-readable)', 'Readable text of the main work: this value is required, together with applicable <ProductForm> and <ProductFormDetail> values, to designate an e-book or other digital product whose primary content is eye-readable text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'Extensive links between internal content', 'E-publication is enhanced with a significant number of actionable cross-references, hyperlinked notes and annotations, or with other links between largely textual elements (eg quiz/test questions, ''choose your own ending'' etc)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'Extensive links to external content', 'E-publication is enhanced with a significant number of actionable (clickable) web links'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '16', true, 'Additional eye-readable text not part of main work', 'E-publication is enhanced with additional textual content such as interview, feature article, essay, bibliography, quiz/test, other background material or text that is not included in a primary or ''unenhanced'' version'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'Promotional text for other book product', 'eg Teaser chapter'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Musical notation', 'Musical notation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Still images / graphics', 'Use only when no more detailed specification is provided'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'Photographs', 'Whether in a plate section / insert, or not'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '19', true, 'Figures, diagrams, charts, graphs', 'Including other ''mechanical'' (ie non-photographic) illustrations'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '20', true, 'Additional images / graphics not part of main work', 'E-publication is enhanced with additional images or graphical content such as supplementary photographs that are not included in a primary or ''unenhanced'' version'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Maps and/or other cartographic content', 'Maps and/or other cartographic content'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Audiobook', 'Audio recording of a reading of a book or other text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Performance - spoken word', 'Audio recording of a drama or other spoken word performance'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Other speech content', 'eg an interview, not a ''reading'' or ''performance'')'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Music recording', 'Audio recording of a music performance, including musical drama and opera'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Other audio', 'Audio recording of other sound, eg birdsong'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '21', true, 'Partial performance - spoken word', 'Audio recording of a reading, performance or dramatization of part of the work'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '22', true, 'Additional audio content not part of main work', 'Product is enhanced with audio recording of full or partial reading, performance, dramatization, interview, background documentary or other audio content not included in the primary or ''unenhanced'' version'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '23', true, 'Promotional audio for other book product', 'eg Reading of teaser chapter'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Video', 'Includes Film, video, animation etc. Use only when no more detailed specification is provided. Formerly ''Moving images'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '26', true, 'Video recording of a reading', 'Video recording of a reading'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '27', true, 'Performance - visual', 'Video recording of a drama or other performance, including musical performance'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '24', true, 'Animated / interactive illustrations', 'eg animated diagrams, charts, graphs or other illustrations'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '25', true, 'Narrative animation', 'eg cartoon, animatic or CGI animation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '28', true, 'Other video', 'Other video content eg interview, not a reading or performance'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '29', true, 'Partial performance - video', 'Video recording of a reading, performance or dramatization of part of the work'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '30', true, 'Additional video content not part of main work', 'E-publication is enhanced with video recording of full or partial reading, performance, dramatization, interview, background documentary or other content not included in the primary or ''unenhanced'' version'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '31', true, 'Promotional video for other book product', 'eg Book trailer'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Game / Puzzle', 'No multi-user functionality. Formerly just ''Game'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '32', true, 'Contest', 'Includes some degree of multi-user functionality'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Software', 'Largely ''content free'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Data', 'Data files'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '33', true, 'Data set plus software', 'Data set plus software'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '34', true, 'Blank pages', 'Intended to be filled in by the reader'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '35', true, 'Advertising content', 'Use only where type of advertising content is not stated'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '37', true, 'Advertising - first party', '''Back ads'' - promotional pages for other books (that do not include sample content, cf codes 17, 23)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '36', true, 'Advertising - coupons', 'Eg to obtain discounts on other products'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '38', true, 'Advertising - third party display', 'Advertising - third party display'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '39', true, 'Advertising - third party textual', 'Advertising - third party textual'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '81';
--
-- 82 - Bible contents
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '82', 'Bible contents',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AP', true, 'Apocrypha (Catholic canon)', 'The seven portions of the Apocrypha added to the Catholic canon at the Council of Trent in 1546: Tobit; Judith; Wisdom of Solomon; Sirach (Ecclesiasticus); Baruch, including the Letter of Jeremiah; I and II Maccabees; Extra portions of Esther and Daniel (Additions to Esther; the Prayer of Azariah; Song of the Three Jews; Susannah; Bel and the Dragon). These are not generally included in the Protestant canon.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '82';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AQ', true, 'Apocrypha (canon unspecified)', 'A collection of Apocryphal texts, canon not specified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '82';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AX', true, 'Additional Apocryphal texts: Greek Orthodox canon', 'I Esdras; Prayer of Manasseh; Psalm 151; III Maccabees.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '82';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AY', true, 'Additional Apocryphal texts: Slavonic Orthodox canon', 'I and II Esdras; Prayer of Manasseh; Psalm 151; III and IV Maccabees.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '82';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AZ', true, 'Additional Apocryphal texts', 'Additional Apocryphal texts included in some Bible versions: I and II Esdras; Prayer of Manasseh.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '82';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GA', true, 'General canon with Apocrypha (Catholic canon)', 'The 66 books included in the Protestant, Catholic and Orthodox canons, together with the seven portions of the Apocrypha included in the Catholic canon.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '82';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GC', true, 'General canon with Apocryphal texts (canon unspecified)', 'The 66 books included in the Protestant, Catholic and Orthodox canons, together with Apocryphal texts, canon not specified.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '82';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GE', true, 'General canon', 'The 66 books included in the Protestant, Catholic and Orthodox canons, 39 from the Old Testament and 27 from the New Testament. The sequence of books may differ in different canons.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '82';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GS', true, 'Gospels', 'The books of Matthew, Mark, Luke and John.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '82';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'OT', true, 'Old Testament', 'Those 39 books which were included in the Jewish canon by the rabbinical academy established at Jamma in 90 CE. Also known as the Jewish or Hebrew scriptures.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '82';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NT', true, 'New Testament', 'The 27 books included in the Christian canon through the Easter Letter of Athanasius, Bishop of Alexandria and also by a general council of the Christian church held near the end of the 4th century CE.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '82';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NP', true, 'New Testament with Psalms and Proverbs', 'Includes the 27 books of the New Testament plus Psalms and Proverbs from the Old Testament.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '82';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PE', true, 'Paul''s Epistles', 'The books containing the letters of Paul to the various early Christian churches.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '82';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PP', true, 'Psalms and Proverbs', 'The book of Psalms and the book of Proverbs combined.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '82';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PS', true, 'Psalms', 'The book of Psalms.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '82';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PT', true, 'Pentateuch', 'The first five books of the Bible: Genesis, Exodus, Numbers, Leviticus, Deuteronomy. Also applied to the Torah.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '82';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZZ', true, 'Other portions', 'Selected books of either the OT or NT not otherwise noted.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '82';
--
-- 83 - Bible version
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '83', 'Bible version',
           true, true, 'CodeTablesONIX30Char3', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ALV', true, 'Alberto Vaccari', 'Alberto Vaccari - Pontificio Istituto Biblico'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AMP', true, 'Amplified', 'A translation based on the American Standard Version and showing multiple options for the translation of ancient text. Published in full in 1965. Sponsored by the Lockman Foundation.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ANM', true, 'Antonio Martini', 'Antonio Martini'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ASV', true, 'American Standard', 'A 1901 translation using verbal equivalence techniques with the purpose of Americanizing the King James version.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CEI', true, 'C.E.I. - Conferenza Episcopale Italiana', '(Revised description of existing code)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CEN', true, 'C.E.I. - Conferenza Episcopale Italiana 2008', 'Nuova traduzione C.E.I. 2008'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CEV', true, 'Contemporary English', 'A translation completed in 1995 and sponsored by the American Bible Society under the leadership of Barclay Newman.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CNC', true, 'Concordata', 'Concordata'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DDI', true, 'Diodati', 'Diodati'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DDN', true, 'Nuova Diodati', 'Nuova Diodati'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DOU', true, 'Douay-Rheims', 'An early (1580-1609) English translation from the Latin Vulgate designed for Catholics and performed by George Martin.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'EIN', true, 'Einheits&uuml;bersetzung', 'A German translation of the Bible for use in Roman Catholic churches'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ESV', true, 'English Standard', 'An update of the Revised Standard Version that makes ''modest'' use of gender-free terminology.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FBB', true, 'Biblia (1776)', 'Finnish Bible translation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FRA', true, 'Raamattu (1933/1938)', 'Finnish Bible translation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FRK', true, 'Raamattu kansalle', 'Finnish Bible translation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FRM', true, 'Raamattu (1992)', 'Finnish Bible translation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GDW', true, 'God''s Word', 'A 1995 translation by the World Bible Publishing Company using the English language in a manner to communicate to the late 20th century American.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GEN', true, 'Geneva', 'An early (1560) English version of the Bible translated by William Whittingham with strong Protestant leanings.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GNB', true, 'Good News', 'A translation sponsored by the American Bible Society. The New Testament was first published (as ''Today''s English Version'' TEV) in 1966. The Old Testament was completed in 1976, and the whole was published as the ''Good News Bible''.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GPR', true, 'Galbiati, Penna, Rossano', 'E. Galbiati A. Penna P. Rossano - UTET'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GRK', true, 'Original Greek', 'New Testament text in an original Greek version'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GRM', true, 'Garofano, Rinaldi - Marietti', 'S. Garofano S. Rinaldi - Marietti'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'HBR', true, 'Original Hebrew', 'Old Testament text in an original Hebrew version'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'HCS', true, 'Holman Christian Standard', 'Published by Broadman and Holman this translation rejects all forms of gender-neutral wording and is written with strong influences from the Southern Baptist perspective of biblical scholarship.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ICB', true, 'International Children''s', 'A translation completed in 1986 targeting readability at the US third grade level.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ILC', true, 'Traduzione Interconfessionale in Lingua Corrente', 'Traduzione Interconfessionale in Lingua Corrente'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'JER', true, 'Jerusalem', 'A translation designed for English speaking Catholics based on the original languages. It is based on French as well as ancient texts and was first published in 1966.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KJV', true, 'King James', 'A translation commissioned by King James I of England and first published in 1611.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KJT', true, '21st Century King James', 'A verbal translation led by William Prindele. Published in 1994, it was designed to modernize the language of the King James Version based on Webster''s New International Dictionary, 2nd edition, unabridged.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LVB', true, 'Living Bible', 'A paraphrase translation led by Kenneth N Taylor and first published in 1972.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LZZ', true, 'Luzzi', 'Luzzi'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MSG', true, 'Message Bible', 'A paraphrase translation of the New Testament by Eugene Peterson first published in 1993.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NAB', true, 'New American', 'A translation aimed at Catholic readers first published in its entirely in 1970. A revised New Testament was issued in 1986.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NAS', true, 'New American Standard', 'A translation commissioned by the Lockman Foundation. The New Testament was published in 1960 followed by the entire Bible in 1971.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NAU', true, 'New American Standard, Updated', 'A 1995 translation using more modern language than the NASB.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NBA', true, 'Bibelen 1895', 'Norwegian Bible translation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NBB', true, 'Bibelen 1930', 'Norwegian Bible translation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NBC', true, 'Bibelen 1938', 'Norwegian Bible translation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NBD', true, 'Bibelen 1978-85', 'Norwegian Bible translation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NBE', true, 'Bibelen 1978', 'Norwegian Bible translation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NBF', true, 'Bibelen 1985', 'Norwegian Bible translation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NBG', true, 'Bibelen 1988', 'Norwegian Bible translation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NBH', true, 'Bibelen 1978-85/rev. 2005', 'Norwegian Bible translation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NCV', true, 'New Century', 'A translation inspired by the International Children''s version. First published by World Publishing in 1991.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NEB', true, 'New English', 'A translation first issued in 1970 as a result of a proposal at the 1946 General Assembly of the Church of Scotland.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NGO', true, 'Bibelen Guds ord', 'Norwegian Bible translation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NIV', true, 'New International', 'A translation underwritten by the International Bible Society (formerly New York Bible Society). The New Testament was published in 1973 followed by the entire Bible in 1978.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NIR', true, 'New International Reader''s', 'A 1996 translation designed for people with limited literacy in English and based on the NIV.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NJB', true, 'New Jerusalem', 'A revision of the Jerusalem Bible. First published in 1986.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NKJ', true, 'New King James', 'A version issued by Thomas Nelson Publishers in 1982-83 designed to update the language of the King James Version while maintaining the phrasing and rhythm and using the same sources as its predecessor.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NNK', true, 'Bibelen, nynorsk', 'Norwegian ''nynorsk'' Bible translation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NLV', true, 'New Living', 'A translation sponsored by Tyndale House and first released in 1996. It is considered a revision and updating of the Living Bible.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NRS', true, 'New Revised Standard', 'A revision of the Revised Standard based on ancient texts but updating language to American usage of the 1980s.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NTV', true, 'Nueva Traduccion Vivienta', 'A Spanish translation from the original Greek and Hebrew, sponsored by Tyndale House.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NVB', true, 'Novissima Versione della Bibbia', 'Novissima Versione della Bibbia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NVD', true, 'Nueva Biblia al Dia', 'A Spanish translation from the original Greek and Hebrew, sponsored by the International Bible Society/Sociedad B&iacute;blica Internacional.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NVI', true, 'Nueva Version Internacional', 'A Spanish translation underwritten by the International Bible Society.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PHP', true, 'New Testament in Modern English (Phillips)', 'An idiomatic translation by J B Phillips, first completed in 1966'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'REB', true, 'Revised English', 'A 1989 revision of the NEB. A significant effort was made to reduce the British flavor present in the NEB.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'REV', true, 'Revised Version', 'The first major revision of the King James Version, the Revised Version incorporates insights from early manuscripts discovered between 1611 and 1870, and corrects readings in the KJV which nineteenth-century scholarship deemed mistaken. The New Testament was published in 1881, the Old Testament in 1885, and the Apocrypha in 1895.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RSV', true, 'Revised Standard', 'A translation authorized by the National Council of Churches of Christ in the USA. The New Testament was published in 1946 followed by a complete Protestant canon in 1951.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RVL', true, 'Reina Valera', 'A Spanish translation based on the original texts.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SBB', true, 'Bibel 2000', 'Swedish Bible translation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SMK', true, 'Bibelen, samisk', 'Norwegian ''samisk'' Bible translation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TEV', true, 'Today''s English', 'A translation of the New Testament sponsored by the American Bible Society and first published in 1966. It was incorporated into the ''Good News Bible'' GNB in 1976.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TNI', true, 'Today''s New International', 'An updating of the New International Version. The New Testament was published in 2002, and the entire Bible is scheduled for 2005.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZZZ', true, 'Other', 'Other translations not otherwise noted.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '83';
--
-- 84 - Study Bible type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '84', 'Study Bible type',
           true, true, 'CodeTablesONIX30Char3', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CAM', true, 'Cambridge Annotated', 'Contains the work of Howard Clark Kee including a summary of the development of the canon, introductions to the books, notes and cross references. Originally published in 1993, NRSV.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '84';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LIF', true, 'Life Application', 'A project of Tyndale House Publishers and Zondervan intended to help readers apply the Bible to daily living. Living Bible, King James, New International, NASB'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '84';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MAC', true, 'Macarthur', 'A King James version study Bible with notes by James Macarthur first published in 1997.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '84';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'OXF', true, 'Oxford Annotated', 'A study Bible originally published in the 1960s and based on the RSV / NRSV.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '84';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NNT', true, 'Studiebibel, Det Nye testamentet', 'Norwegian study Bible, New Testament'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '84';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NOX', true, 'New Oxford Annotated', 'Published in 1991 and based on the New Revised Standard version.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '84';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NSB', true, 'Norsk studiebibel', 'Norwegian study Bible'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '84';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RYR', true, 'Ryrie', 'Based on the work of Charles C. Ryrie. King James, NI, NASB'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '84';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SCO', true, 'Scofield', 'A study Bible based on the early 20th century work of C.I. Scofield. Based on the King James version.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '84';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SPR', true, 'Spirit Filled', 'A transdenominational study Bible for persons from the Pentecostal/Charismatic traditions.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '84';
--
-- 85 - Bible purpose
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '85', 'Bible purpose',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AW', true, 'Award', 'A Bible (or selected Biblical text) designed for presentation from a religious organization.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BB', true, 'Baby', 'A Bible (or selected Biblical text) designed to be a gift to commemorate a child''s birth.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BR', true, 'Bride', 'A special gift Bible (or selected Biblical text) designed for the bride on her wedding day. Usually white.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CF', true, 'Confirmation', 'A Bible (or selected Biblical text) designed to be used in the confirmation reading or as a gift to a confirmand'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CH', true, 'Children''s', 'A text Bible (or selected Biblical text) designed in presentation and readability for a child.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CM', true, 'Compact', 'A small Bible (or selected Biblical text) with a trim height of five inches or less.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CR', true, 'Cross-reference', 'A Bible (or selected Biblical text) which includes text conveying cross-references to related scripture passages.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DR', true, 'Daily readings', 'A Bible (or selected Biblical text) laid out to provide readings for each day of the year.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DV', true, 'Devotional', 'A Bible (or selected Biblical text) containing devotional content together with the scripture.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FM', true, 'Family', 'A Bible (or selected Biblical text) containing family record pages and/or additional study material for family devotion'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GT', true, 'General/Text', 'A standard Bible (or selected Biblical text) of any version with no distinguishing characteristics beyond the canonical text.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GF', true, 'Gift', 'A Bible (or selected Biblical text) designed for gift or presentation, often including a presentation page.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LP', true, 'Lectern/Pulpit', 'A large Bible (or selected Biblical text) with large print designed for use in reading scriptures in public worship from either the pulpit or lectern.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MN', true, 'Men''s', 'A Bible (or selected Biblical text) especially designed with helps and study guides oriented to the adult male.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PS', true, 'Primary school', 'A Bible (or selected Biblical text) designed for use in primary school'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PW', true, 'Pew', 'Usually inexpensive but sturdy, a Bible (or selected Biblical text) designed for use in church pews.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SC', true, 'Scholarly', 'A Bible (or selected Biblical text) including texts in Greek and/or Hebrew and designed for scholarly study.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SL', true, 'Slimline', 'Slimline'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ST', true, 'Student', 'A Bible (or selected Biblical text) with study articles and helps especially for use in the classroom.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SU', true, 'Study', 'A Bible (or selected Biblical text) with many extra features, e.g. book introductions, dictionary, concordance, references, maps, etc., to help readers better understand the scripture.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'WG', true, 'Wedding gift', 'A special gift Bible (or selected Biblical text) designed as a gift to the couple on their wedding day'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'WM', true, 'Women''s', 'A devotional or study Bible (or selected Biblical text) with helps targeted at the adult woman.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'YT', true, 'Youth', 'A Bible (or selected Biblical text) containing special study and devotional helps designed specifically for the needs of teenagers.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '85';
--
-- 86 - Bible text organization
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '86', 'Bible text organization',
           true, true, 'CodeTablesONIX30Char3', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CHR', true, 'Chronological', 'A Bible with the text organized in the order in which events are believed to have happened.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '86';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CHA', true, 'Chain reference', 'A Bible which explores keywords or themes by referring text to preceding or following text.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '86';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'INT', true, 'Interlinear', 'A Bible or other text in which different versions are printed one line above the other, so that the variations can easily be detected.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '86';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PAR', true, 'Parallel', 'A Bible with two or more versions printed side by side.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '86';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'STN', true, 'Standard', 'A Bible in which the text is presented in the traditional order.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '86';
--
-- 87 - Bible reference location
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '87', 'Bible reference location',
           true, true, 'CodeTablesONIX30Char3', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CCL', true, 'Center column', 'References are printed in a narrow column in the center of the page between two columns of text.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '87';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PGE', true, 'Page end', 'References are printed at the foot of the page.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '87';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SID', true, 'Side column', 'References are printed in a column to the side of the scripture.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '87';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VER', true, 'Verse end', 'References are printed at the end of the applicable verse.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '87';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'UNK', true, 'Unknown', 'The person creating the ONIX record does not know where the references are located.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '87';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZZZ', true, 'Other', 'Other locations not otherwise identified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '87';
--
-- 89 - Religious text feature type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '89', 'Religious text feature type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Church season or activity', 'A church season or activity for which a religious text is intended'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '89';
--
-- 90 - Religious text feature code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '90', 'Religious text feature code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Academic year', 'Use with code 01 in <ReligiousTextFeatureType>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '90';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Catechistic year', 'Use with code 01 in <ReligiousTextFeatureType>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '90';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Liturgical year', 'Use with code 01 in <ReligiousTextFeatureType>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '90';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Advent and Christmas', 'Use with code 01 in <ReligiousTextFeatureType>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '90';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Blessings', 'Use with code 01 in <ReligiousTextFeatureType>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '90';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Scholastic cycles', 'Use with code 01 in <ReligiousTextFeatureType>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '90';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Confirmation and Holy Communion', 'Use with code 01 in <ReligiousTextFeatureType>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '90';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Summer activites', 'For example, summer camps and other youth recreational activities: use with code 01 in <ReligiousTextFeatureType>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '90';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Easter', 'Use with code 01 in <ReligiousTextFeatureType>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '90';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Lent', 'Use with code 01 in <ReligiousTextFeatureType>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '90';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Marian themes', 'Use with code 01 in <ReligiousTextFeatureType>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '90';
--
-- 91 - Country code - ISO 3166-1
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '91', 'Country code - ISO 3166-1',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AD', true, 'Andorra', 'Andorra'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AE', true, 'United Arab Emirates', 'United Arab Emirates'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AF', true, 'Afghanistan', 'Afghanistan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AG', true, 'Antigua and Barbuda', 'Antigua and Barbuda'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AI', true, 'Anguilla', 'Anguilla'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AL', true, 'Albania', 'Albania'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AM', true, 'Armenia', 'Armenia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AN', true, 'Netherlands Antilles', 'Deprecated - use BQ, CW or SX as appropriate'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AO', true, 'Angola', 'Angola'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AQ', true, 'Antarctica', 'Antarctica'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AR', true, 'Argentina', 'Argentina'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AS', true, 'American Samoa', 'American Samoa'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AT', true, 'Austria', 'Austria'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AU', true, 'Australia', 'Australia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AW', true, 'Aruba', 'Aruba'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AX', true, 'Aland Islands', 'Aland Islands'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AZ', true, 'Azerbaijan', 'Azerbaijan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BA', true, 'Bosnia and Herzegovina', 'Bosnia and Herzegovina'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BB', true, 'Barbados', 'Barbados'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BD', true, 'Bangladesh', 'Bangladesh'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BE', true, 'Belgium', 'Belgium'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BF', true, 'Burkina Faso', 'Burkina Faso'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BG', true, 'Bulgaria', 'Bulgaria'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BH', true, 'Bahrain', 'Bahrain'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BI', true, 'Burundi', 'Burundi'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BJ', true, 'Benin', 'Benin'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BL', true, 'Saint Barthelemy', 'Saint Barthelemy'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BM', true, 'Bermuda', 'Bermuda'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BN', true, 'Brunei Darussalam', 'Brunei Darussalam'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BO', true, 'Bolivia', 'Bolivia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BQ', true, 'Bonaire, St Eustatius, Saba', 'Bonaire, St Eustatius, Saba'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BR', true, 'Brazil', 'Brazil'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BS', true, 'Bahamas', 'Bahamas'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BT', true, 'Bhutan', 'Bhutan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BV', true, 'Bouvet Island', 'Bouvet Island'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BW', true, 'Botswana', 'Botswana'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BY', true, 'Belarus', 'Belarus'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BZ', true, 'Belize', 'Belize'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CA', true, 'Canada', 'Canada'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CC', true, 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CD', true, 'Congo, Democratic Republic of the', 'Congo, Democratic Republic of the'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CF', true, 'Central African Republic', 'Central African Republic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CG', true, 'Congo', 'Congo'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CH', true, 'Switzerland', 'Switzerland'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CI', true, 'Cote D''Ivoire', 'Cote D''Ivoire'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CK', true, 'Cook Islands', 'Cook Islands'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CL', true, 'Chile', 'Chile'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CM', true, 'Cameroon', 'Cameroon'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CN', true, 'China', 'China'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CO', true, 'Colombia', 'Colombia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CR', true, 'Costa Rica', 'Costa Rica'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CS', true, 'Serbia and Montenegro', 'DEPRECATED, replaced by ME - Montenegro and RS - Serbia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CU', true, 'Cuba', 'Cuba'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CV', true, 'Cape Verde', 'Cape Verde'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CW', true, 'Cura&ccedil;ao', 'Cura&ccedil;ao'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CX', true, 'Christmas Island', 'Christmas Island'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CY', true, 'Cyprus', 'Cyprus'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CZ', true, 'Czech Republic', 'Czech Republic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DE', true, 'Germany', 'Germany'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DJ', true, 'Djibouti', 'Djibouti'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DK', true, 'Denmark', 'Denmark'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DM', true, 'Dominica', 'Dominica'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DO', true, 'Dominican Republic', 'Dominican Republic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DZ', true, 'Algeria', 'Algeria'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'EC', true, 'Ecuador', 'Ecuador'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'EE', true, 'Estonia', 'Estonia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'EG', true, 'Egypt', 'Egypt'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'EH', true, 'Western Sahara', 'Western Sahara'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ER', true, 'Eritrea', 'Eritrea'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ES', true, 'Spain', 'Spain'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ET', true, 'Ethiopia', 'Ethiopia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FI', true, 'Finland', 'Finland'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FJ', true, 'Fiji', 'Fiji'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FK', true, 'Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FM', true, 'Micronesia, Federated States of', 'Micronesia, Federated States of'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FO', true, 'Faroe Islands', 'Faroe Islands'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FR', true, 'France', 'France'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GA', true, 'Gabon', 'Gabon'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GB', true, 'United Kingdom', 'United Kingdom'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GD', true, 'Grenada', 'Grenada'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GE', true, 'Georgia', 'Georgia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GF', true, 'French Guiana', 'French Guiana'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GG', true, 'Guernsey', 'Guernsey'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GH', true, 'Ghana', 'Ghana'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GI', true, 'Gibraltar', 'Gibraltar'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GL', true, 'Greenland', 'Greenland'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GM', true, 'Gambia', 'Gambia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GN', true, 'Guinea', 'Guinea'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GP', true, 'Guadeloupe', 'Guadeloupe'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GQ', true, 'Equatorial Guinea', 'Equatorial Guinea'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GR', true, 'Greece', 'Greece'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GS', true, 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GT', true, 'Guatemala', 'Guatemala'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GU', true, 'Guam', 'Guam'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GW', true, 'Guinea-Bissau', 'Guinea-Bissau'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GY', true, 'Guyana', 'Guyana'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'HK', true, 'Hong Kong', 'Hong Kong'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'HM', true, 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'HN', true, 'Honduras', 'Honduras'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'HR', true, 'Croatia', 'Croatia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'HT', true, 'Haiti', 'Haiti'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'HU', true, 'Hungary', 'Hungary'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ID', true, 'Indonesia', 'Indonesia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'IE', true, 'Ireland', 'Ireland'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'IL', true, 'Israel', 'Israel'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'IM', true, 'Isle of Man', 'Isle of Man'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'IN', true, 'India', 'India'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'IO', true, 'British Indian Ocean Territory', 'British Indian Ocean Territory'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'IQ', true, 'Iraq', 'Iraq'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'IR', true, 'Iran, Islamic Republic of', 'Iran, Islamic Republic of'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'IS', true, 'Iceland', 'Iceland'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'IT', true, 'Italy', 'Italy'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'JE', true, 'Jersey', 'Jersey'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'JM', true, 'Jamaica', 'Jamaica'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'JO', true, 'Jordan', 'Jordan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'JP', true, 'Japan', 'Japan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KE', true, 'Kenya', 'Kenya'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KG', true, 'Kyrgyzstan', 'Kyrgyzstan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KH', true, 'Cambodia', 'Cambodia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KI', true, 'Kiribati', 'Kiribati'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KM', true, 'Comoros', 'Comoros'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KN', true, 'Saint Kitts and Nevis', 'Saint Kitts and Nevis'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KP', true, 'Korea, Democratic People''s Republic of', 'Korea, Democratic People''s Republic of'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KR', true, 'Korea, Republic of', 'Korea, Republic of'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KW', true, 'Kuwait', 'Kuwait'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KY', true, 'Cayman Islands', 'Cayman Islands'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KZ', true, 'Kazakhstan', 'Kazakhstan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LA', true, 'Lao People''s Democratic Republic', 'Lao People''s Democratic Republic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LB', true, 'Lebanon', 'Lebanon'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LC', true, 'Saint Lucia', 'Saint Lucia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LI', true, 'Liechtenstein', 'Liechtenstein'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LK', true, 'Sri Lanka', 'Sri Lanka'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LR', true, 'Liberia', 'Liberia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LS', true, 'Lesotho', 'Lesotho'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LT', true, 'Lithuania', 'Lithuania'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LU', true, 'Luxembourg', 'Luxembourg'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LV', true, 'Latvia', 'Latvia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LY', true, 'Libyan Arab Jamahiriya', 'Libyan Arab Jamahiriya'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MA', true, 'Morocco', 'Morocco'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MC', true, 'Monaco', 'Monaco'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MD', true, 'Moldova, Republic of', 'Moldova, Republic of'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ME', true, 'Montenegro', 'Montenegro'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MF', true, 'Saint Martin, French part', 'Saint Martin, French part'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MG', true, 'Madagascar', 'Madagascar'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MH', true, 'Marshall Islands', 'Marshall Islands'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MK', true, 'Macedonia, the former Yugoslav Republic of', 'Macedonia, the former Yugoslav Republic of'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ML', true, 'Mali', 'Mali'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MM', true, 'Myanmar', 'Myanmar'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MN', true, 'Mongolia', 'Mongolia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MO', true, 'Macao', 'Macao'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MP', true, 'Northern Mariana Islands', 'Northern Mariana Islands'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MQ', true, 'Martinique', 'Martinique'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MR', true, 'Mauritania', 'Mauritania'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MS', true, 'Montserrat', 'Montserrat'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MT', true, 'Malta', 'Malta'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MU', true, 'Mauritius', 'Mauritius'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MV', true, 'Maldives', 'Maldives'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MW', true, 'Malawi', 'Malawi'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MX', true, 'Mexico', 'Mexico'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MY', true, 'Malaysia', 'Malaysia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MZ', true, 'Mozambique', 'Mozambique'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NA', true, 'Namibia', 'Namibia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NC', true, 'New Caledonia', 'New Caledonia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NE', true, 'Niger', 'Niger'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NF', true, 'Norfolk Island', 'Norfolk Island'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NG', true, 'Nigeria', 'Nigeria'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NI', true, 'Nicaragua', 'Nicaragua'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NL', true, 'Netherlands', 'Netherlands'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NO', true, 'Norway', 'Norway'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NP', true, 'Nepal', 'Nepal'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NR', true, 'Nauru', 'Nauru'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NU', true, 'Niue', 'Niue'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NZ', true, 'New Zealand', 'New Zealand'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'OM', true, 'Oman', 'Oman'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PA', true, 'Panama', 'Panama'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PE', true, 'Peru', 'Peru'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PF', true, 'French Polynesia', 'French Polynesia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PG', true, 'Papua New Guinea', 'Papua New Guinea'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PH', true, 'Philippines', 'Philippines'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PK', true, 'Pakistan', 'Pakistan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PL', true, 'Poland', 'Poland'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PM', true, 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PN', true, 'Pitcairn', 'Pitcairn'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PR', true, 'Puerto Rico', 'Puerto Rico'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PS', true, 'Palestinian Territory, Occupied', 'Palestinian Territory, Occupied'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PT', true, 'Portugal', 'Portugal'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PW', true, 'Palau', 'Palau'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PY', true, 'Paraguay', 'Paraguay'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'QA', true, 'Qatar', 'Qatar'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RE', true, 'Reunion', 'Reunion'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RO', true, 'Romania', 'Romania'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RS', true, 'Serbia', 'Serbia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RU', true, 'Russian Federation', 'Russian Federation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RW', true, 'Rwanda', 'Rwanda'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SA', true, 'Saudi Arabia', 'Saudi Arabia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SB', true, 'Solomon Islands', 'Solomon Islands'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SC', true, 'Seychelles', 'Seychelles'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SD', true, 'Sudan', 'Sudan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SE', true, 'Sweden', 'Sweden'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SG', true, 'Singapore', 'Singapore'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SH', true, 'Saint Helena, Ascension, Tristan da Cunha', 'Saint Helena, Ascension, Tristan da Cunha'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SI', true, 'Slovenia', 'Slovenia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SJ', true, 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SK', true, 'Slovakia', 'Slovakia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SL', true, 'Sierra Leone', 'Sierra Leone'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SM', true, 'San Marino', 'San Marino'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SN', true, 'Senegal', 'Senegal'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SO', true, 'Somalia', 'Somalia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SR', true, 'Suriname', 'Suriname'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ST', true, 'Sao Tome and Principe', 'Sao Tome and Principe'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SV', true, 'El Salvador', 'El Salvador'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SX', true, 'Sint Maarten (Dutch part)', 'Sint Maarten (Dutch part)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SY', true, 'Syrian Arab Republic', 'Syrian Arab Republic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SZ', true, 'Swaziland', 'Swaziland'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TC', true, 'Turks and Caicos Islands', 'Turks and Caicos Islands'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TD', true, 'Chad', 'Chad'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TF', true, 'French Southern Territories', 'French Southern Territories'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TG', true, 'Togo', 'Togo'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TH', true, 'Thailand', 'Thailand'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TJ', true, 'Tajikistan', 'Tajikistan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TK', true, 'Tokelau', 'Tokelau'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TL', true, 'Timor-Leste', 'Timor-Leste'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TM', true, 'Turkmenistan', 'Turkmenistan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TN', true, 'Tunisia', 'Tunisia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TO', true, 'Tonga', 'Tonga'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TR', true, 'Turkey', 'Turkey'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TT', true, 'Trinidad and Tobago', 'Trinidad and Tobago'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TV', true, 'Tuvalu', 'Tuvalu'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TW', true, 'Taiwan, Province of China', 'Taiwan, Province of China'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TZ', true, 'Tanzania, United Republic of', 'Tanzania, United Republic of'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'UA', true, 'Ukraine', 'Ukraine'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'UG', true, 'Uganda', 'Uganda'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'UM', true, 'United States Minor Outlying Islands', 'United States Minor Outlying Islands'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'US', true, 'United States', 'United States'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'UY', true, 'Uruguay', 'Uruguay'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'UZ', true, 'Uzbekistan', 'Uzbekistan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VA', true, 'Holy See (Vatican City State)', 'Holy See (Vatican City State)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VC', true, 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VE', true, 'Venezuela, Bolivarian Republic of', 'Venezuela, Bolivarian Republic of'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VG', true, 'Virgin Islands, British', 'Virgin Islands, British'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VI', true, 'Virgin Islands, US', 'Virgin Islands, US'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VN', true, 'Viet Nam', 'Viet Nam'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VU', true, 'Vanuatu', 'Vanuatu'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'WF', true, 'Wallis and Futuna', 'Wallis and Futuna'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'WS', true, 'Samoa', 'Samoa'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'YE', true, 'Yemen', 'Yemen'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'YT', true, 'Mayotte', 'Mayotte'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'YU', true, 'Yugoslavia', 'DEPRECATED, replaced by ME - Montenegro and RS - Serbia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZA', true, 'South Africa', 'South Africa'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZM', true, 'Zambia', 'Zambia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZW', true, 'Zimbabwe', 'Zimbabwe'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '91';
--
-- 92 - Supplier identifier type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '92', 'Supplier identifier type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Proprietary', 'Proprietary'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '92';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Proprietary', 'DEPRECATED - use 01'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '92';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'B&ouml;rsenverein Verkehrsnummer', 'B&ouml;rsenverein Verkehrsnummer'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '92';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'German ISBN Agency publisher identifier', 'German ISBN Agency publisher identifier'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '92';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'GLN', 'GS1 global location number (formerly EAN location number)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '92';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'SAN', 'Book trade Standard Address Number - US, UK etc'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '92';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Distributeurscode Boekenbank', 'Flemish supplier code'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '92';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Fondscode Boekenbank', 'Flemish publisher code'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '92';
--
-- 93 - Supplier role
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '93', 'Supplier role',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Unspecified', 'Default'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '93';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Publisher to retailers', 'Publisher as supplier to retail trade outlets'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '93';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Publisher''s exclusive distributor to retailers', 'Publisher''s exclusive distributor to retailers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '93';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Publisher''s non-exclusive distributor to retailers', 'Publisher''s non-exclusive distributor to retailers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '93';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Wholesaler', 'Wholesaler supplying retail trade outlets'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '93';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Sales agent', 'DEPRECATED - use <MarketRepresentation> (ONIX 2.1) or <MarketPublishingDetail> (ONIX 3.0) to specify a sales agent'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '93';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Publisher''s distributor to retailers', 'In a specified supply territory. Use only where exclusive/non-exclusive status is not known. Prefer 02 or 03 as appropriate, where possible.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '93';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'POD supplier', 'Where a POD product is supplied to retailers and/or consumers direct from a POD source.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '93';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Retailer', 'Retailer'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '93';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Publisher to end-customers', 'Publisher as supplier direct to consumers and/or institutional customers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '93';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Exclusive distributor to end-customers', 'Intermediary as exclusive distributor direct to consumers and/or institutional customers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '93';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Non-exclusive distributor to end-customers', 'Intermediary as non-exclusive distributor direct to consumers and/or institutional customers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '93';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Distributor to end-customers', 'Use only where exclusive/non-exclusive status is not known. Prefer 10 or 11 as appropriate, where possible.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '93';
--
-- 94 - Default linear unit
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '94', 'Default linear unit',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'cm', true, 'Centimeters', 'Centimeters'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '94';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'in', true, 'Inches (US)', 'Inches (US)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '94';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'mm', true, 'Millimeters', 'Millimeters'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '94';
--
-- 95 - Default unit of weight
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '95', 'Default unit of weight',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'lb', true, 'Pounds (US)', 'Pounds (US)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '95';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'gr', true, 'Grams', 'Grams'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '95';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'oz', true, 'Ounces (US)', 'Ounces (US)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '95';
--
-- 96 - Currency code - ISO 4217
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '96', 'Currency code - ISO 4217',
           true, true, 'CodeTablesONIX30Char3', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AED', true, 'UAE Dirham', 'United Arab Emirates'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AFA', true, 'Afghani', 'DEPRECATED, replaced by AFN'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AFN', true, 'Afghani', 'Afghanistan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ALL', true, 'Lek', 'Albania'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AMD', true, 'Armenian Dram', 'Armenia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ANG', true, 'Netherlands Antillian Guilder', 'Netherlands Antilles'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AOA', true, 'Kwanza', 'Angola'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ARS', true, 'Argentine Peso', 'Argentina'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ATS', true, 'Austria, Schilling', 'Now replaced by the Euro (EUR): use only for historical prices that pre-date the introduction of the Euro'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AUD', true, 'Australian Dollar', 'Australia, Christmas Island, Cocos (Keeling) Islands, Heard Island and McDonald Islands, Kiribati, Nauru, Norfolk Island, Tuvalu'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AWG', true, 'Aruban Guilder', 'Aruba'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AZN', true, 'Azerbaijanian Manat', 'Azerbaijan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BAM', true, 'Convertible Marks', 'Bosnia and Herzegovina'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BBD', true, 'Barbados Dollar', 'Barbados'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BDT', true, 'Taka', 'Bangladesh'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BEF', true, 'Belgium, Franc', 'Now replaced by the Euro (EUR): use only for historical prices that pre-date the introduction of the Euro'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BGL', true, 'Lev', 'DEPRECATED, replaced by BGN'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BGN', true, 'Lev', 'Bulgaria'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BHD', true, 'Bahraini Dinar', 'Bahrain'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BIF', true, 'Burundi Franc', 'Burundi'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BMD', true, 'Bermuda Dollar', 'Bermuda'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BND', true, 'Brunei Dollar', 'Brunei Darussalam'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BOB', true, 'Boliviano', 'Bolivia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BRL', true, 'Brazilian Real', 'Brazil'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BSD', true, 'Bahamian Dollar', 'Bahamas'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BTN', true, 'Ngultrun', 'Bhutan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BWP', true, 'Pula', 'Botswana'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BYR', true, 'Belarussian Ruble', 'Belarus'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BZD', true, 'Belize Dollar', 'Belize'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CAD', true, 'Canadian Dollar', 'Canada'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CDF', true, 'Franc Congolais', 'Congo (Democratic Republic of the)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CHF', true, 'Swiss Franc', 'Switzerland, Liechtenstein'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CLP', true, 'Chilean Peso', 'Chile'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CNY', true, 'Yuan Renminbi', 'China'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'COP', true, 'Colombian Peso', 'Colombia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CRC', true, 'Costa Rican Colon', 'Costa Rica'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CSD', true, 'Serbian Dinar', 'Serbia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CUC', true, 'Cuban Convertible Peso', 'Cuba (alternative currency)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CUP', true, 'Cuban Peso', 'Cuba'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CVE', true, 'Cape Verde Escudo', 'Cape Verde'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CYP', true, 'Cyprus Pound', 'Now replaced by the Euro (EUR): use only for historical prices that pre-date the introduction of the Euro'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CZK', true, 'Czech Koruna', 'Czech Republic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DEM', true, 'Germany, Mark', 'Now replaced by the Euro (EUR): use only for historical prices that pre-date the introduction of the Euro'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DJF', true, 'Djibouti Franc', 'Djibouti'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DKK', true, 'Danish Krone', 'Denmark, Faroe Islands, Greenland'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DOP', true, 'Dominican Peso', 'Dominican Republic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DZD', true, 'Algerian Dinar', 'Algeria'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'EEK', true, 'Kroon', 'Estonia - now replaced by the Euro (EUR): use only for historical prices that pre-date the introduction of the Euro'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'EGP', true, 'Egyptian Pound', 'Egypt'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ERN', true, 'Nakfa', 'Eritrea'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ESP', true, 'Spain, Peseta', 'Now replaced by the Euro (EUR): use only for historical prices that pre-date the introduction of the Euro'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ETB', true, 'Ethiopian Birr', 'Ethiopia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'EUR', true, 'Euro', 'Andorra, Austria, Belgium, Cyprus, Estonia, Finland, France, Fr Guiana, Fr S Territories, Germany, Greece, Guadeloupe, Holy See (Vatican City), Ireland, Italy, Luxembourg, Martinique, Malta, Mayotte, Monaco, Montenegro, Netherlands, Portugal, R&eacute;union, St Pierre and Miquelon, San Marino, Spain'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FIM', true, 'Finland, Markka', 'Now replaced by the Euro (EUR): use only for historical prices that pre-date the introduction of the Euro'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FJD', true, 'Fiji Dollar', 'Fiji'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FKP', true, 'Falkland Islands Pound', 'Falkland Islands (Malvinas)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FRF', true, 'France, Franc', 'Now replaced by the Euro (EUR): use only for historical prices that pre-date the introduction of the Euro'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GBP', true, 'Pound Sterling', 'United Kingdom'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GEL', true, 'Lari', 'Georgia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GHC', true, 'Cedi', 'Ghana'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GIP', true, 'Gibraltar Pound', 'Gibraltar'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GMD', true, 'Dalasi', 'Gambia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GNF', true, 'Guinea Franc', 'Guinea'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GRD', true, 'Greece, Drachma', 'Now replaced by the Euro (EUR): use only for historical prices that pre-date the introduction of the Euro'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GTQ', true, 'Quetzal', 'Guatemala'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GWP', true, 'Guinea-Bissau Peso', 'Guinea-Bissau'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GYD', true, 'Guyana Dollar', 'Guyana'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'HKD', true, 'Hong Kong Dollar', 'Hong Kong'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'HNL', true, 'Lempira', 'Honduras'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'HRK', true, 'Croatian Kuna', 'Croatia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'HTG', true, 'Gourde', 'Haiti'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'HUF', true, 'Forint', 'Hungary'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'IDR', true, 'Rupiah', 'Indonesia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'IEP', true, 'Ireland, Punt', 'Now replaced by the Euro (EUR): use only for historical prices that pre-date the introduction of the Euro'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ILS', true, 'Israeli Sheqel', 'Israel'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'INR', true, 'Indian Rupee', 'India'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'IQD', true, 'Iraqi Dinar', 'Iraq'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'IRR', true, 'Iranian Rial', 'Iran (Islamic Republic of)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ISK', true, 'Iceland Krona', 'Iceland'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ITL', true, 'Italy, Lira', 'Now replaced by the Euro (EUR): use only for historical prices that pre-date the introduction of the Euro'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'JMD', true, 'Jamaican Dollar', 'Jamaica'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'JOD', true, 'Jordanian Dinar', 'Jordan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'JPY', true, 'Yen', 'Japan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KES', true, 'Kenyan Shilling', 'Kenya'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KGS', true, 'Som', 'Kyrgyzstan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KHR', true, 'Riel', 'Cambodia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KMF', true, 'Comoro Franc', 'Comoros'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KPW', true, 'North Korean Won', 'Korea (Democratic People''s Republic of)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KRW', true, 'Won', 'Korea (Republic of)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KWD', true, 'Kuwaiti Dinar', 'Kuwait'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KYD', true, 'Cayman Islands Dollar', 'Cayman Islands'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KZT', true, 'Tenge', 'Kazakstan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LAK', true, 'Kip', 'Lao People''s Democratic Republic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LBP', true, 'Lebanese Pound', 'Lebanon'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LKR', true, 'Sri Lanka Rupee', 'Sri Lanka'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LRD', true, 'Liberian Dollar', 'Liberia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LSL', true, 'Loti', 'Lesotho'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LTL', true, 'Lithuanian Litus', 'Lithuania'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LUF', true, 'Luxembourg, Franc', 'Now replaced by the Euro (EUR): use only for historical prices that pre-date the introduction of the Euro'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LVL', true, 'Latvian Lats', 'Latvia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LYD', true, 'Libyan Dinar', 'Libyan Arab Jamahiriya'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MAD', true, 'Moroccan Dirham', 'Morocco, Western Sahara'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MDL', true, 'Moldovan Leu', 'Moldova, Republic of'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MGA', true, 'Ariary', 'Madagascar'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MGF', true, 'Malagasy Franc', 'Madagascar'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MKD', true, 'Denar', 'Macedonia (former Yugoslav Republic of)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MMK', true, 'Kyat', 'Myanmar'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MNT', true, 'Tugrik', 'Mongolia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MOP', true, 'Pataca', 'Macau'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MRO', true, 'Ouguiya', 'Mauritania'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MTL', true, 'Maltese Lira', 'Malta - now replaced by the Euro (EUR): use only for historical prices that pre-date the introduction of the Euro'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MUR', true, 'Mauritius Rupee', 'Mauritius'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MVR', true, 'Rufiyaa', 'Maldives'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MWK', true, 'Kwacha', 'Malawi'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MXN', true, 'Mexican Peso', 'Mexico'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MYR', true, 'Malaysian Ringgit', 'Malaysia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MZN', true, 'Metical', 'Mozambique'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NAD', true, 'Namibia Dollar', 'Namibia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NGN', true, 'Naira', 'Nigeria'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NIO', true, 'Cordoba Oro', 'Nicaragua'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NLG', true, 'Netherlands, Guilder', 'Now replaced by the Euro (EUR): use only for historical prices that pre-date the introduction of the Euro'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NOK', true, 'Norwegian Krone', 'Norway, Bouvet Island, Svalbard and Jan Mayen'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NPR', true, 'Nepalese Rupee', 'Nepal'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NZD', true, 'New Zealand Dollar', 'New Zealand, Cook Islands, Niue, Pitcairn, Tokelau'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'OMR', true, 'Rial Omani', 'Oman'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PAB', true, 'Balboa', 'Panama'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PEN', true, 'Nuevo Sol', 'Peru'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PGK', true, 'Kina', 'Papua New Guinea'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PHP', true, 'Philippine Peso', 'Philippines'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PKR', true, 'Pakistan Rupee', 'Pakistan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PLN', true, 'Zloty', 'Poland'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PTE', true, 'Portugal, Escudo', 'Now replaced by the Euro (EUR): use only for historical prices that pre-date the introduction of the Euro'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PYG', true, 'Guarani', 'Paraguay'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'QAR', true, 'Qatari Rial', 'Qatar'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ROL', true, 'Old Leu', 'Romania'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RON', true, 'New Leu', 'Romania'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RUB', true, 'Russian Ruble', 'Russian Federation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RUR', true, 'Russian Ruble', 'DEPRECATED, replaced by RUB'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RWF', true, 'Rwanda Franc', 'Rwanda'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SAR', true, 'Saudi Riyal', 'Saudi Arabia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SBD', true, 'Solomon Islands Dollar', 'Solomon Islands'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SCR', true, 'Seychelles Rupee', 'Seychelles'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SDD', true, 'Sudanese Dinar', 'Sudan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SEK', true, 'Swedish Krona', 'Sweden'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SGD', true, 'Singapore Dollar', 'Singapore'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SHP', true, 'Saint Helena Pound', 'Saint Helena'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SIT', true, 'Tolar', 'Slovenia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SKK', true, 'Slovak Koruna', 'Slovakia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SLL', true, 'Leone', 'Sierra Leone'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SOS', true, 'Somali Shilling', 'Somalia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SRD', true, 'Suriname Guilder', 'Suriname'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SRG', true, 'Suriname Guilder', 'DEPRECATED, replaced by SRD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'STD', true, 'Dobra', 'S&atilde;o Tome and Principe'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SVC', true, 'El Salvador Colon', 'El Salvador'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SYP', true, 'Syrian Pound', 'Syrian Arab Republic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SZL', true, 'Lilangeni', 'Swaziland'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'THB', true, 'Baht', 'Thailand'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TJS', true, 'Somoni', 'Tajikistan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TMM', true, 'Manat', 'Turkmenistan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TND', true, 'Tunisian Dinar', 'Tunisia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TOP', true, 'Pa''anga', 'Tonga'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TPE', true, 'Timor Escudo', 'NO LONGER VALID, Timor-Leste now uses the US Dollar'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TRL', true, 'Turkish Lira (old)', 'Turkey'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TRY', true, 'Turkish Lira (new)', 'Turkey, from 1 January 2005'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TTD', true, 'Trinidad and Tobago Dollar', 'Trinidad and Tobago'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TWD', true, 'New Taiwan Dollar', 'Taiwan (Province of China)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TZS', true, 'Tanzanian Shilling', 'Tanzania (United Republic of)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'UAH', true, 'Hryvnia', 'Ukraine'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'UGX', true, 'Uganda Shilling', 'Uganda'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'USD', true, 'US Dollar', 'United States, American Samoa, British Indian Ocean Territory, Ecuador, Guam, Marshall Is, Micronesia (Federated States of), Northern Mariana Is, Palau, Puerto Rico, Timor-Leste, Turks and Caicos Is, US Minor Outlying Is, Virgin Is (British), Virgin Is (US)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'UYU', true, 'Peso Uruguayo', 'Uruguay'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'UZS', true, 'Uzbekistan Sum', 'Uzbekistan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VEB', true, 'Bolivar', 'Venezuela'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VND', true, 'Dong', 'Viet Nam'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VUV', true, 'Vatu', 'Vanuatu'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'WST', true, 'Tala', 'Samoa'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XAF', true, 'CFA Franc BEAC', 'Cameroon, Central African Republic, Chad, Congo, Equatorial Guinea, Gabon'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XCD', true, 'East Caribbean Dollar', 'Anguilla, Antigua and Barbuda, Dominica, Grenada, Montserrat, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XOF', true, 'CFA Franc BCEAO', 'Benin, Burkina Faso, C&ocirc;te D''Ivoire, Mali, Niger, Senegal, Togo'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XPF', true, 'CFP Franc', 'French Polynesia, New Caledonia, Wallis and Futuna'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'YER', true, 'Yemeni Rial', 'Yemen'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'YUM', true, 'Yugoslavian Dinar', 'DEPRECATED, replaced by CSD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZAR', true, 'Rand', 'South Africa'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZMK', true, 'Kwacha', 'Zambia'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZWD', true, 'Zimbabwe Dollar', 'Zimbabwe'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '96';
--
-- 97 - Bible text feature
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '97', 'Bible text feature',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RL', true, 'Red letter', 'Words spoken by Christ are printed in red'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '97';
--
-- 98 - Product form feature value - binding or page edge color
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '98', 'Product form feature value - binding or page edge color',
           true, true, 'CodeTablesONIX30Char3', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BLK', true, 'Black', 'Black'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BLU', true, 'Blue', 'Blue'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BRN', true, 'Brown', 'Brown'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BUR', true, 'Burgundy/maroon', 'Burgundy/maroon'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CRE', true, 'Cream', 'Cream'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FCO', true, 'Four-color', 'Four-color'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FCS', true, 'Four-color and spot-color', 'Four-color and spot-color'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GLD', true, 'Gold', 'Gold'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GRN', true, 'Green', 'Green'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GRY', true, 'Grey', 'Grey'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MUL', true, 'Multicolor', 'Multicolor'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NAV', true, 'Navy', 'Navy'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ORG', true, 'Orange', 'Orange'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PNK', true, 'Pink', 'Pink'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PUR', true, 'Purple', 'Purple'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RED', true, 'Red', 'Red'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SLV', true, 'Silver', 'Silver'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TAN', true, 'Tan', 'Tan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'WHI', true, 'White', 'White'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'YEL', true, 'Yellow', 'Yellow'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZZZ', true, 'Other', 'Other'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '98';
--
-- 99 - Product form feature value - special cover material
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '99', 'Product form feature value - special cover material',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Berkshire leather', 'Pigskin'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Calfskin', 'Calfskin'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'French Morocco', 'Calf split or sheep split'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Morocco', 'Goatskin'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Bonded buffalo grain', 'Bonded buffalo grain'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Bonded calf grain', 'Bonded calf grain'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Bonded Cordova', 'Bonded Cordova'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Bonded eelskin', 'Bonded eelskin'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Bonded Ostraleg', 'Bonded Ostraleg'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Bonded ostrich', 'Bonded ostrich'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Bonded reptile grain', 'Bonded reptile grain'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Bonded leather', 'Bonded leather'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Cowhide', 'Cowhide'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'Eelskin', 'Eelskin'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'Kivar', 'Kivar'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '16', true, 'Leatherflex', 'Leatherflex'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'Moleskin', 'Moleskin'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'Softhide leather', 'Softhide leather'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '19', true, 'Metal', 'Metal'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '20', true, 'Velvet', 'German ''Samt'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '21', true, 'Mother-of-pearl', 'Spanish ''n&aacute;car'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '22', true, 'Papyrus', 'Papyrus'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '23', true, 'G&eacute;ltex', 'An imitation cloth binding material'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '24', true, 'Guaflex', 'An imitation leather binding material'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '99';
--
-- 100 - Discount code type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '100', 'Discount code type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'BIC discount group code', 'UK publisher''s or distributor''s discount group code in a format specified by BIC to ensure uniqueness'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '100';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Proprietary discount code', 'A publisher''s or supplier''s own code which identifies a trade discount category, the actual discount being set by trading partner agreement (applies to goods supplied on standard trade discounting terms)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '100';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Boeksoort', 'Terms code used in the Netherlands book trade'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '100';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'German terms code', 'Terms code used in German ONIX applications'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '100';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Proprietary commission code', 'A publisher''s or supplier''s own code which identifies a commission rate category, the actual commission rate being set by trading partner agreement (applies to goods supplied on agency terms)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '100';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'BIC commission group code', 'UK publisher''s or distributor''s commission group code in format specified by BIC to ensure uniqueness. Format is identical to BIC discount group code, but indicates a commission rather than a discount (applies to goods supplied on agency terms)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '100';
--
-- 101 - Person name identifier type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '101', 'Person name identifier type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Proprietary', 'Proprietary'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '101';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'DNB-PND', 'Deutsche Bibliothek Personennormdatei - person name code of the German national library'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '101';
--
-- 102 - Sales outlet identifier type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '102', 'Sales outlet identifier type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Proprietary', 'Proprietary'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '102';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'BIC sales outlet ID code', 'DEPRECATED - use code 03'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '102';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'ONIX sales outlet ID code', 'From List 139'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '102';
--
-- 121 - Text script code - ISO 15924
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '121', 'Text script code - ISO 15924',
           true, true, 'CodeTablesONIX30Char4', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Afak', true, 'Afaka', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Arab', true, 'Arabic', 'Arabic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Armi', true, 'Imperial Aramaic', 'Imperial Aramaic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Armn', true, 'Armenian', 'Armenian'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Avst', true, 'Avestan', 'Avestan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Bali', true, 'Balinese', 'Balinese'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Bamu', true, 'Bamun', 'Bamun'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Bass', true, 'Bassa Vah', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Batk', true, 'Batak', 'Batak'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Beng', true, 'Bengali', 'Bengali'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Blis', true, 'Blissymbols', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Bopo', true, 'Bopomofo', 'Bopomofo'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Brah', true, 'Brahmi', 'Brahmi'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Brai', true, 'Braille', 'Braille'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Bugi', true, 'Buginese', 'Buginese'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Buhd', true, 'Buhid', 'Buhid'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Cakm', true, 'Chakma', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Cans', true, 'Unified Canadian Aboriginal Syllabics', 'Unified Canadian Aboriginal Syllabics'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Cari', true, 'Carian', 'Carian'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Cham', true, 'Cham', 'Cham'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Cher', true, 'Cherokee', 'Cherokee'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Cirt', true, 'Cirth', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Copt', true, 'Coptic', 'Coptic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Cprt', true, 'Cypriot', 'Cypriot'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Cyrl', true, 'Cyrillic', 'Cyrillic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Cyrs', true, 'Cyrillic (Old Church Slavonic variant)', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Deva', true, 'Devanagari (Nagari)', 'Devanagari (Nagari)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Dsrt', true, 'Deseret (Mormon)', 'Deseret (Mormon)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Dupl', true, 'Duployan shorthand, Duployan stenography', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Egyd', true, 'Egyptian demotic', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Egyh', true, 'Egyptian hieratic', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Egyp', true, 'Egyptian hieroglyphs', 'Egyptian hieroglyphs'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Elba', true, 'Elbasan', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Ethi', true, 'Ethiopic (Ge''ez)', 'Ethiopic (Ge''ez)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Geok', true, 'Khutsuri (Asomtavruli and Khutsuri)', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Geor', true, 'Georgian (Mkhedruli)', 'Georgian (Mkhedruli)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Glag', true, 'Glagolitic', 'Glagolitic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Goth', true, 'Gothic', 'Gothic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Gran', true, 'Grantha', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Grek', true, 'Greek', 'Greek'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Gujr', true, 'Gujarati', 'Gujarati'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Guru', true, 'Gurmukhi', 'Gurmukhi'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Hang', true, 'Hangul (Hangul, Hangeul)', 'Hangul (Hangul, Hangeul)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Hani', true, 'Han (Hanzi, Kanji, Hanja)', 'Han (Hanzi, Kanji, Hanja)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Hano', true, 'Hanunoo (Hanun&oacute;o)', 'Hanunoo (Hanun&oacute;o)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Hans', true, 'Han (Simplified variant)', 'Han (Simplified variant)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Hant', true, 'Han (Traditional variant)', 'Han (Traditional variant)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Hebr', true, 'Hebrew', 'Hebrew'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Hira', true, 'Hiragana', 'Hiragana'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Hmng', true, 'Pahawh Hmong', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Hrkt', true, '(alias for Hiragana + Katakana)', '(alias for Hiragana + Katakana)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Hung', true, 'Old Hungarian', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Inds', true, 'Indus (Harappan)', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Ital', true, 'Old Italic (Etruscan, Oscan, etc)', 'Old Italic (Etruscan, Oscan, etc)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Java', true, 'Javanese', 'Javanese'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Jpan', true, '(alias for Han + Hiragana + Katakana)', '(alias for Han + Hiragana + Katakana)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Jurc', true, 'Jurchen', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Kali', true, 'Kayah Likayah li', 'Kayah Likayah li'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Kana', true, 'Katakana', 'Katakana'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Khar', true, 'Kharoshthi', 'Kharoshthi'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Khmr', true, 'Khmer', 'Khmer'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Knda', true, 'Kannada', 'Kannada'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Kore', true, 'Korean (alias for Hangul + Han)', 'Korean (alias for Hangul + Han)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Kpel', true, 'Kpelle', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Kthi', true, 'Kaithi', 'Kaithi'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Lana', true, 'Lanna, Tai Tham', 'Lanna, Tai Tham'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Laoo', true, 'Lao', 'Lao'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Latf', true, 'Latin (Fraktur variant)', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Latg', true, 'Latin (Gaelic variant)', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Latn', true, 'Latin', 'Latin'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Lepc', true, 'Lepcha (R&oacute;ng)', 'Lepcha (R&oacute;ng)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Limb', true, 'Limbu', 'Limbu'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Lina', true, 'Linear A', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Linb', true, 'Linear B', 'Linear B'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Lisu', true, 'Lisu (Fraser)', 'Lisu (Fraser)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Loma', true, 'Loma', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Lyci', true, 'Lycian', 'Lycian'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Lydi', true, 'Lydian', 'Lydian'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Mand', true, 'Mandaic, Mandaean', 'Mandaic, Mandaean'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Mani', true, 'Manichaean', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Maya', true, 'Mayan hieroglyphs', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Mend', true, 'Mende', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Merc', true, 'Meroitic Cursive', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Mero', true, 'Meroitic Hieroglyphs', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Mlym', true, 'Malayalam', 'Malayalam'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Mong', true, 'Mongolian', 'Mongolian'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Moon', true, 'Moon (Moon code, Moon script, Moon type)', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Mroo', true, 'Mro', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Mtei', true, 'Meitei Mayek (Meithei, Meetei)', 'Meitei Mayek (Meithei, Meetei)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Mymr', true, 'Myanmar (Burmese)', 'Myanmar (Burmese)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Narb', true, 'Old North Arabian (Ancient North Arabian)', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Nbat', true, 'Nabatean', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Nkgb', true, 'Nakhi Geba (''Na-''Khi &sup2;Ggo-&sup1;baw, Naxi Geba)', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Nkoo', true, 'N''Ko', 'N''Ko'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Nshu', true, 'N&uuml;shu', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Ogam', true, 'Ogham', 'Ogham'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Olck', true, 'Ol Chiki (Ol Cemet'', Ol, Santali)', 'Ol Chiki (Ol Cemet'', Ol, Santali)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Orkh', true, 'Old Turkic, Orkhon Runic', 'Old Turkic, Orkhon Runic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Orya', true, 'Oriya', 'Oriya'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Osma', true, 'Osmanya', 'Osmanya'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Palm', true, 'Palmyrene', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Perm', true, 'Old Permic', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Phag', true, 'Phags-pa', 'Phags-pa'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Phli', true, 'Inscriptional Pahlavi', 'Inscriptional Pahlavi'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Phlp', true, 'Psalter Pahlavi', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Phlv', true, 'Book Pahlavi', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Phnx', true, 'Phoenician', 'Phoenician'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Plrd', true, 'Miao (Pollard Phonetic)', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Prti', true, 'Inscriptional Parthian', 'Inscriptional Parthian'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Qaaa', true, 'Reserved for private use (start)', 'Reserved for private use (start)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Qabx', true, 'Reserved for private use (end)', 'Reserved for private use (end)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Rjng', true, 'Rejang, Redjang, Kaganga', 'Rejang, Redjang, Kaganga'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Roro', true, 'Rongorongo', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Runr', true, 'Runic', 'Runic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Samr', true, 'Samaritan', 'Samaritan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Sara', true, 'Sarati', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Sarb', true, 'Old South Arabian', 'Old South Arabian'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Saur', true, 'Saurashtra', 'Saurashtra'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Sgnw', true, 'SignWriting', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Shaw', true, 'Shavian (Shaw)', 'Shavian (Shaw)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Shrd', true, 'Sharada', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Sind', true, 'Sindhi, Khudawadi', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Sinh', true, 'Sinhala', 'Sinhala'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Sora', true, 'Sora Sompeng', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Sund', true, 'Sundanese', 'Sundanese'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Sylo', true, 'Syloti Nagri', 'Syloti Nagri'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Syrc', true, 'Syriac', 'Syriac'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Syre', true, 'Syriac (Estrangelo variant)', 'Syriac (Estrangelo variant)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Syrj', true, 'Syriac (Western variant)', 'Syriac (Western variant)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Syrn', true, 'Syriac (Eastern variant)', 'Syriac (Eastern variant)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Tagb', true, 'Tagbanwa', 'Tagbanwa'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Takr', true, 'Takri', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Tale', true, 'Tai Le', 'Tai Le'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Talu', true, 'New Tai Lue', 'New Tai Lue'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Taml', true, 'Tamil', 'Tamil'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Tang', true, 'Tangut', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Tavt', true, 'Tai Viet', 'Tai Viet'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Telu', true, 'Telugu', 'Telugu'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Teng', true, 'Tengwar', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Tfng', true, 'Tifinagh (Berber)', 'Tifinagh (Berber)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Tglg', true, 'Tagalog (Baybayin, Alibata)', 'Tagalog (Baybayin, Alibata)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Thaa', true, 'Thaana', 'Thaana'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Thai', true, 'Thai', 'Thai'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Tibt', true, 'Tibetan', 'Tibetan'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Ugar', true, 'Ugaritic', 'Ugaritic'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Vaii', true, 'Vai', 'Vai'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Visp', true, 'Visible Speech', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Wara', true, 'Warang Citi (Varang Kshiti)', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Wole', true, 'Woleai', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Xpeo', true, 'Old Persian', 'Old Persian'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Xsux', true, 'Cuneiform, Sumero-Akkadian', 'Cuneiform, Sumero-Akkadian'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Yiii', true, 'Yi', 'Yi'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Zinh', true, 'Code for inherited script', 'Code for inherited script'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Zmth', true, 'Mathematical notation', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Zsym', true, 'Symbols', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Zxxx', true, 'Code for unwritten languages', 'script is not supported by Unicode'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Zyyy', true, 'Code for undetermined script', 'Code for undetermined script'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Zzzz', true, 'Code for uncoded script', 'Code for uncoded script'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '121';
--
-- 139 - ONIX sales outlet IDs
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '139', 'ONIX sales outlet IDs',
           true, true, 'CodeTablesONIX30Char3', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ACM', true, 'A C Moore', 'A C Moore'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AAP', true, 'AandP', 'AandP'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ALB', true, 'Albertson''s', 'Albertson''s'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AMZ', true, 'Amazon', 'Amazon'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ANR', true, 'Angus and Robertson', 'Angus and Robertson'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'APC', true, 'Apple Computer stores', 'Apple Computer stores'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ASD', true, 'Asda', 'Asda'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AUD', true, 'Audible', 'Audible'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BDL', true, 'B Dalton', 'B Dalton'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BNO', true, 'Barnes and Noble', 'Barnes and Noble'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BBB', true, 'Bed Bath and Beyond', 'Bed Bath and Beyond'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BST', true, 'Best Buy', 'Best Buy'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BJW', true, 'BJ''s Wholesale Club', 'BJ''s Wholesale Club'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BLK', true, 'Blackwell''s', 'Blackwell''s'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BCA', true, 'Book Club Associates', 'Book Club Associates'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BKP', true, 'Bookpeople', 'Bookpeople'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BKM', true, 'Books-A-Million', 'Books-A-Million'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BRD', true, 'Borders', 'Borders'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BRB', true, 'Borders/Books Etc', 'Borders/Books Etc'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BRT', true, 'British Bookshops', 'British Bookshops'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CST', true, 'Costco', 'Costco'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CRB', true, 'Crate and Barrel', 'Crate and Barrel'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CVS', true, 'CVS Drug Stores', 'CVS Drug Stores'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DSG', true, 'Dick''s Sporting Goods', 'Dick''s Sporting Goods'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DYM', true, 'Dymocks', 'Dymocks'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ELC', true, 'Early Learning Centre', 'Early Learning Centre'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ESN', true, 'Eason', 'Eason'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ENH', true, 'English Heritage', 'English Heritage'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FRY', true, 'Fry''s Electronics', 'Fry''s Electronics'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'GMS', true, 'Gamestop', 'Gamestop'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'HST', true, 'Hastings Entertainment', 'Hastings Entertainment'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'HMV', true, 'HMV', 'HMV'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'HMD', true, 'Home Depot', 'Home Depot'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'IND', true, 'Indigo-Chapters', 'Indigo-Chapters'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'JSM', true, 'John Smith and Son', 'John Smith and Son'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KMT', true, 'K-Mart', 'K-Mart'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'KRG', true, 'Kroger', 'Kroger'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LWE', true, 'Lowe''s', 'Lowe''s'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MKS', true, 'Marks and Spencer', 'Marks and Spencer'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MCR', true, 'Microcenter', 'Microcenter'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MRR', true, 'Morrisons', 'Morrisons'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MTC', true, 'Mothercare', 'Mothercare'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'NTR', true, 'National Trust', 'National Trust'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'OFD', true, 'Office Depot', 'Office Depot'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'OFM', true, 'Office Max', 'Office Max'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PST', true, 'Past Times', 'Past Times'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PTS', true, 'Pet Smart', 'Pet Smart'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PTC', true, 'Petco', 'Petco'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PLY', true, 'Play.com', 'Play.com'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PTB', true, 'Pottery Barn', 'Pottery Barn'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RST', true, 'Restoration Hardware', 'Restoration Hardware'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'RTZ', true, 'Ritz Camera', 'Ritz Camera'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SFW', true, 'Safeway', 'Safeway'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SNS', true, 'Sainsbury''s', 'Sainsbury''s'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SLF', true, 'Selfridges', 'Selfridges'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'STP', true, 'Staples', 'Staples'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TRG', true, 'Target', 'Target'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TES', true, 'Tesco', 'Tesco'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TSR', true, 'Toys ''R'' Us', 'Toys ''R'' Us'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'TSO', true, 'TSO (The Stationery Office)', 'TSO (The Stationery Office)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VRG', true, 'Virgin Megastores', 'Virgin Megastores'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'WHS', true, 'W H Smith', 'W H Smith'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'WTR', true, 'Waitrose', 'Waitrose'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'WLM', true, 'Wal-Mart', 'Wal-Mart'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'WST', true, 'Waterstone''s', 'Waterstone''s'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'WHT', true, 'Whitcoul''s', 'Whitcoul''s'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'WLS', true, 'Williams Sonoma', 'Williams Sonoma'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'WLW', true, 'Woolworths', 'Woolworths'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZVV', true, 'Zavvi', 'Formerly Virgin Megastores (UK)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZZZ', true, 'Other', 'Include retailer name in <SalesOutletName>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '139';
--
-- 140 - US CPSIA choking hazard warning code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '140', 'US CPSIA choking hazard warning code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'WARNING: CHOKING HAZARD -- Small parts | Not for children under 3 yrs.', 'List withdrawn - use List 143'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '140';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'WARNING: CHOKING HAZARD -- This toy is a small ball | Not for children under 3 yrs.', 'List withdrawn - use List 143'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '140';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'WARNING: CHOKING HAZARD -- Toy contains a small ball | Not for children under 3 yrs.', 'List withdrawn - use List 143'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '140';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'WARNING: CHOKING HAZARD -- Children under 8 yrs. can choke or suffocate on uninflated or broken balloons. Adult supervision', '               required | Keep uninflated balloons from children. Discard broken balloons at once.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '140';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'WARNING: CHOKING HAZARD -- This toy is a marble | Not for children under 3 yrs.', 'List withdrawn - use List 143'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '140';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'WARNING: CHOKING HAZARD -- Toy contains a marble | Not for children under 3 yrs.', 'List withdrawn - use List 143'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '140';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'No choking hazard warning necessary', 'List withdrawn - use List 143'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '140';
--
-- 141 - Barcode indicator
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '141', 'Barcode indicator',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Not barcoded', 'Not barcoded'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '141';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Barcoded, scheme unspecified', 'Barcoded, scheme unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '141';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'GTIN-13', 'GTIN-13'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '141';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'GTIN-13+5 (US dollar price encoded)', 'GTIN-13+5 (US dollar price encoded)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '141';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'GTIN-13+5 (CAN dollar price encoded)', 'GTIN-13+5 (CAN dollar price encoded)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '141';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'GTIN-13+5 (no price encoded)', 'GTIN-13+5 (no price encoded)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '141';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'UPC-12 (item-specific)', 'AKA item/price'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '141';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'UPC-12+5 (item-specific)', 'AKA item/price'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '141';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'UPC-12 (price-point)', 'AKA price/item'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '141';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'UPC-12+5 (price-point)', 'AKA price/item'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '141';
--
-- 142 - Position on product
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '142', 'Position on product',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Unknown / unspecified', 'Position unknown or unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '142';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Cover 4', 'The back cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '142';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Cover 3', 'The inside back cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '142';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Cover 2', 'The inside front cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '142';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Cover 1', 'The front cover of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '142';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'On spine', 'The spine of a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '142';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'On box', 'Used only for boxed products'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '142';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'On tag', 'Used only for products fitted with hanging tags'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '142';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'On bottom', 'Not be used for books unless they are contained within outer packaging'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '142';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'On back', 'Not be used for books unless they are contained within outer packaging'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '142';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'On outer sleeve / back', 'Used only for products packaged in outer sleeves'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '142';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'On removable wrapping', 'Used only for products packaged in shrink-wrap or other removable wrapping'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '142';
--
-- 143 - US CPSIA choking hazard warning code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '143', 'US CPSIA choking hazard warning code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'WARNING: CHOKING HAZARD -- Small parts | Not for children under 3 yrs.', 'Required on applicable products sold in the US'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '143';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'WARNING: CHOKING HAZARD -- Children under 8 yrs. can choke or suffocate on uninflated or broken balloons. Adult supervision', '               required | Keep uninflated balloons from children. Discard broken balloons at once.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '143';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'WARNING: CHOKING HAZARD -- This toy is a small ball | Not for children under 3 yrs.', 'Required on applicable products sold in the US'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '143';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'WARNING: CHOKING HAZARD -- Toy contains a small ball | Not for children under 3 yrs.', 'Required on applicable products sold in the US'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '143';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'WARNING: CHOKING HAZARD -- This toy is a marble | Not for children under 3 yrs.', 'Required on applicable products sold in the US'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '143';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'WARNING: CHOKING HAZARD -- Toy contains a marble | Not for children under 3 yrs.', 'Required on applicable products sold in the US'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '143';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'No choking hazard warning necessary', 'To be used when a supplier wishes to make a clear statement that no such warning is applicable to product.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '143';
--
-- 144 - Epub technical protection
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '144', 'Epub technical protection',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'None', 'Has no technical protection'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '144';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'DRM', 'Has DRM protection'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '144';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Digital watermarking', 'Has digital watermarking'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '144';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Adobe DRM', 'Has DRM protection applied by the Adobe CS4 Content Server Package or by the Adobe ADEPT hosted service'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '144';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Apple DRM', 'FairPlay'' DRM protection applied via Apple proprietary online store'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '144';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'OMA DRM', 'Has OMA v2 DRM protection applied, as used to protect some mobile phone content'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '144';
--
-- 145 - Usage type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '145', 'Usage type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Preview', 'Preview before purchase'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '145';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Print', 'Print paper copy of extract'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '145';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Copy / paste', 'Make digital copy of extract'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '145';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Share', 'Share product across multiple concurrent devices'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '145';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Text to speech', '''Read aloud'' with text to speech functionality'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '145';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Lend', 'Lendable to other device owner or account holder (primary copy becomes unusable while copy is ''on loan'')'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '145';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Time-limited license', 'E-publication license is time limited. Use with 02 from List 146 and a number of days in <EpubUsageLimit>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '145';
--
-- 146 - Usage status
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '146', 'Usage status',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Permitted unlimited', 'Permitted unlimited'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '146';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Permitted subject to limit', 'Limit should be specified in <EpubUsageLimit>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '146';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Prohibited', 'Prohibited'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '146';
--
-- 147 - Unit of usage
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '147', 'Unit of usage',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Copies', 'Maximum number of copies that may be made of a permitted extract'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '147';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Characters', 'Maximum number of characters in a permitted extract for a specified usage'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '147';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Words', 'Maximum number of words in a permitted extract for a specified usage'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '147';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Pages', 'Maximum number of pages in a permitted extract for a specified usage'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '147';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Percentage', 'Maximum percentage of total content in a permitted extract for a specified usage'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '147';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Devices', 'Maximum number of devices in ''share group'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '147';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Concurrent users', 'Maximum number of concurrent users'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '147';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Percentage per time period', 'Maximum percentage of total content which may be used in a specified usage per time period; the time period being specified as another EpubUsageQuantity'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '147';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Days', 'Maximum time period in days'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '147';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Times', 'Maximum number of times a specified usage may occur'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '147';
--
-- 148 - Collection type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '148', 'Collection type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Unspecified (default)', 'Collection type is not determined'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '148';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Publisher collection', 'The collection is a bibliographic collection (eg a series) defined and identified by a publisher, either on the product itself or in product information supplied by the publisher'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '148';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '20', true, 'Ascribed collection', 'The collection has been defined and identified by a party in the metadata supply chain other than the publisher, typically an aggregator'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '148';
--
-- 149 - Title element level
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '149', 'Title element level',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Product', 'The title element refers to an individual product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '149';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Collection level', 'The title element refers to the top level of a bibliographic collection.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '149';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Subcollection', 'The title element refers to an intermediate level of a bibliographic collection that comprises two or more ''sub-collections'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '149';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Content item', 'The title element refers to a content item within a product, eg a work included in a combined or ''omnibus'' edition, or a chapter in a book.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '149';
--
-- 150 - Product form
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '150', 'Product form',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Undefined', 'Undefined'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AA', true, 'Audio', 'Audio recording - detail unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AB', true, 'Audio cassette', 'Audio cassette (analogue)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AC', true, 'CD-Audio', 'Audio compact disc, in any recording format: use coding in Product Form Detail to specify the format, if required'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AD', true, 'DAT', 'Digital audio tape cassette'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AE', true, 'Audio disc', 'Audio disc (excluding CD)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AF', true, 'Audio tape', 'Audio tape (reel tape)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AG', true, 'MiniDisc', 'Sony MiniDisc format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AH', true, 'CD-Extra', 'Audio compact disc with part CD-ROM content'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AI', true, 'DVD Audio', 'DVD Audio'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AJ', true, 'Downloadable audio file', 'Audio recording downloadable online'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AK', true, 'Pre-recorded digital audio player', 'For example, Playaway audiobook and player: use coding in Product Form Detail to specify the recording format, if required'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AL', true, 'Pre-recorded SD card', 'For example, Audiofy audiobook chip'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'AZ', true, 'Other audio format', 'Other audio format not specified by AB to AK'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BA', true, 'Book', 'Book - detail unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BB', true, 'Hardback', 'Hardback or cased book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BC', true, 'Paperback / softback', 'Paperback or other softback book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BD', true, 'Loose-leaf', 'Loose-leaf book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BE', true, 'Spiral bound', 'Spiral, comb or coil bound book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BF', true, 'Pamphlet', 'Pamphlet or brochure, stapled; German ''geheftet'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BG', true, 'Leather / fine binding', 'Leather / fine binding'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BH', true, 'Board book', 'Child''s book with all pages printed on board'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BI', true, 'Rag book', 'Child''s book with all pages printed on textile'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BJ', true, 'Bath book', 'Child''s book printed on waterproof material'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BK', true, 'Novelty book', 'A book whose novelty consists wholly or partly in a format which cannot be described by any other available code - a ''conventional'' format code is always to be preferred; one or more Product Form Detail codes, eg from the B2nn group, should be used whenever possible to provide additional description.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BL', true, 'Slide bound', 'Slide bound book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BM', true, 'Big book', 'Extra-large format for teaching etc; this format and terminology may be specifically UK; required as a top-level differentiator'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BN', true, 'Part-work (fasc&iacute;culo)', 'A part-work issued with its own ISBN and intended to be collected and bound into a complete book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BO', true, 'Fold-out book or chart', 'Concertina-folded book or chart, designed to fold to pocket or regular page size: use for German ''Leporello'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BP', true, 'Foam book', 'A children''s book whose cover and pages are made of foam'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'BZ', true, 'Other book format', 'Other book format or binding not specified by BB to BO'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CA', true, 'Sheet map', 'Sheet map - detail unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CB', true, 'Sheet map, folded', 'Sheet map, folded'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CC', true, 'Sheet map, flat', 'Sheet map, flat'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CD', true, 'Sheet map, rolled', 'See Code List 80 for ''rolled in tube'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CE', true, 'Globe', 'Globe or planisphere'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'CZ', true, 'Other cartographic', 'Other cartographic format not specified by CB to CE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DA', true, 'Digital (on physical carrier)', 'Digital content delivered on a physical carrier (detail unspecified)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DB', true, 'CD-ROM', 'CD-ROM'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DC', true, 'CD-I', 'CD interactive'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DE', true, 'Game cartridge', 'Game cartridge'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DF', true, 'Diskette', 'AKA ''floppy disc'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DI', true, 'DVD-ROM', 'DVD-ROM'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DJ', true, 'Secure Digital (SD) Memory Card', 'Secure Digital (SD) Memory Card'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DK', true, 'Compact Flash Memory Card', 'Compact Flash Memory Card'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DL', true, 'Memory Stick Memory Card', 'Memory Stick Memory Card'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DM', true, 'USB Flash Drive', 'USB Flash Drive'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DN', true, 'Double-sided CD/DVD', 'Double-sided disc, one side Audio CD/CD-ROM, other side DVD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'DZ', true, 'Other digital carrier', 'Other carrier of digital content not specified by DB to DN'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'EA', true, 'Digital (delivered electronically)', 'Digital content delivered electronically (delivery method unspecified)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'EB', true, 'Digital download and online', 'Digital content available both by download and by online access'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'EC', true, 'Digital online', 'Digital content accessed online only'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ED', true, 'Digital download', 'Digital content delivered by download only'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FA', true, 'Film or transparency', 'Film or transparency - detail unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FC', true, 'Slides', 'Photographic transparencies mounted for projection'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FD', true, 'OHP transparencies', 'Transparencies for overhead projector'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FE', true, 'Filmstrip', 'Filmstrip'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FF', true, 'Film', 'Continuous movie film as opposed to filmstrip'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'FZ', true, 'Other film or transparency format', 'Other film or transparency format not specified by FB to FF'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LA', true, 'Digital product license', 'Digital product license (delivery method not encoded)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LB', true, 'Digital product license key', 'Digital product license delivered through the retail supply chain as a physical ''key'', typically a card or booklet containing a code enabling the purchaser to download the associated product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'LC', true, 'Digital product license code', 'Digital product license delivered by email or other electronic distribution, typically providing a code enabling the purchaser to upgrade or extend the license supplied with the associated product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MA', true, 'Microform', 'Microform - detail unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MB', true, 'Microfiche', 'Microfiche'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MC', true, 'Microfilm', 'Roll microfilm'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'MZ', true, 'Other microform', 'Other microform not specified by MB or MC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PA', true, 'Miscellaneous print', 'Miscellaneous printed material - detail unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PB', true, 'Address book', 'May use product form detail codes P201 to P204 to specify binding'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PC', true, 'Calendar', 'Calendar'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PD', true, 'Cards', 'Cards, flash cards (eg for teaching reading)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PE', true, 'Copymasters', 'Copymasters, photocopiable sheets'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PF', true, 'Diary', 'May use product form detail codes P201 to P204 to specify binding'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PG', true, 'Frieze', 'Frieze'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PH', true, 'Kit', 'Kit'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PI', true, 'Sheet music', 'Sheet music'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PJ', true, 'Postcard book or pack', 'Postcard book or pack'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PK', true, 'Poster', 'Poster for retail sale - see also XF'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PL', true, 'Record book', 'Record book (eg ''birthday book'', ''baby book''): binding unspecified; may use product form detail codes P201 to P204 to specify binding'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PM', true, 'Wallet or folder', 'Wallet or folder (containing loose sheets etc): it is preferable to code the contents and treat ''wallet'' as packaging (List 80), but if this is not possible the product as a whole may be coded as a ''wallet'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PN', true, 'Pictures or photographs', 'Pictures or photographs'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PO', true, 'Wallchart', 'Wallchart'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PP', true, 'Stickers', 'Stickers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PQ', true, 'Plate (l&aacute;mina)', 'A book-sized (as opposed to poster-sized) sheet, usually in colour or high quality print'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PR', true, 'Notebook / blank book', 'A book with all pages blank for the buyer''s own use; may use product form detail codes P201 to P204 to specify binding'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PS', true, 'Organizer', 'May use product form detail codes P201 to P204 to specify binding'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PT', true, 'Bookmark', 'Bookmark'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'PZ', true, 'Other printed item', 'Other printed item not specified by PB to PQ'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SA', true, 'Multiple-item retail product', 'Presentation unspecified: format of product items must be given in <ProductPart>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SB', true, 'Multiple-item retail product, boxed', 'Format of product items must be given in <ProductPart>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SC', true, 'Multiple-item retail product, slip-cased', 'Format of product items must be given in <ProductPart>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SD', true, 'Multiple-item retail product, shrinkwrapped', 'Format of product items must be given in <ProductPart>. Use code XL for a shrink-wrapped pack for trade supply, where the retail items it contains are intended for sale individually.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SE', true, 'Multiple-item retail product, loose', 'Format of product items must be given in <ProductPart>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'SF', true, 'Multiple-item retail product, part(s) enclosed', 'Multiple item product where subsidiary product part(s) is/are supplied as enclosures to the primary part, eg a book with a CD packaged in a sleeve glued within the back cover. Format of product items must be given in <ProductPart>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VA', true, 'Video', 'Video - detail unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VF', true, 'Videodisc', 'eg Laserdisc'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VI', true, 'DVD video', 'DVD video: specify TV standard in List 78'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VJ', true, 'VHS video', 'VHS videotape: specify TV standard in List 78'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VK', true, 'Betamax video', 'Betamax videotape: specify TV standard in List 78'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VL', true, 'VCD', 'VideoCD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VM', true, 'SVCD', 'Super VideoCD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VN', true, 'HD DVD', 'High definition DVD disc, Toshiba HD DVD format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VO', true, 'Blu-ray', 'High definition DVD disc, Sony Blu-ray format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VP', true, 'UMD Video', 'Sony Universal Media disc'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'VZ', true, 'Other video format', 'Other video format not specified by VB to VP'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XA', true, 'Trade-only material', 'Trade-only material (unspecified)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XB', true, 'Dumpbin - empty', 'Dumpbin - empty'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XC', true, 'Dumpbin - filled', 'Dumpbin with contents. ISBN (where applicable) and format of contained items must be given in Product Part.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XD', true, 'Counterpack - empty', 'Counterpack - empty'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XE', true, 'Counterpack - filled', 'Counterpack with contents. ISBN (where applicable) and format of contained items must be given in Product Part.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XF', true, 'Poster, promotional', 'Promotional poster for display, not for sale - see also PK'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XG', true, 'Shelf strip', 'Shelf strip'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XH', true, 'Window piece', 'Promotional piece for shop window display'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XI', true, 'Streamer', 'Streamer'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XJ', true, 'Spinner', 'Spinner'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XK', true, 'Large book display', 'Large scale facsimile of book for promotional display'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XL', true, 'Shrink-wrapped pack', 'A quantity pack with its own product code, for trade supply only: the retail items it contains are intended for sale individually. ISBN (where applicable) and format of contained items must be given in Product Part. For products or product bundles supplied shrink-wrapped for retail sale, use code SD.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'XZ', true, 'Other point of sale', 'Other point of sale material not specified by XB to XL'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZA', true, 'General merchandise', 'General merchandise - unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZB', true, 'Doll', 'Doll'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZC', true, 'Soft toy', 'Soft or plush toy'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZD', true, 'Toy', 'Toy'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZE', true, 'Game', 'Board game, or other game (except computer game: see DE)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZF', true, 'T-shirt', 'T-shirt'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'ZZ', true, 'Other merchandise', 'Other merchandise not specified by ZB to ZF'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '150';
--
-- 151 - Contributor place relator
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '151', 'Contributor place relator',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Born in', 'Born in'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '151';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Died in', 'Died in'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '151';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Resided in', 'Resided in'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '151';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Currently resides in', 'Currently resides in'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '151';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Educated in', 'Educated in'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '151';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Worked in', 'Worked in'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '151';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Flourished in', 'Flourished in'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '151';
--
-- 152 - Illustrated / not illustrated
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '152', 'Illustrated / not illustrated',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'No', 'Not illustrated'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '152';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Yes', 'Illustrated'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '152';
--
-- 153 - Text type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '153', 'Text type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Sender-defined text', 'To be used only in circumstances where the parties to an exchange have agreed to include text which (a) is not for general distribution, and (b) cannot be coded elsewhere. If more than one type of text is sent, it must be identified by tagging within the text itself.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '153';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Short description/annotation', 'Limited to a maximum of 350 characters'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '153';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Description', 'Length unrestricted'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '153';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Table of contents', 'Used for a table of contents sent as a single text field, which may or may not carry structure expressed as XHTML'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '153';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Flap / cover copy', 'Descriptive blurb taken from the back cover and/or flaps'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '153';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Review quote', 'A quote taken from a review of the product or of the work in question where there is no need to take account of different editions'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '153';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Review quote: previous edition', 'A quote taken from a review of a previous edition of the work'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '153';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Review quote: previous work', 'A quote taken from a review of a previous work by the same author(s) or in the same series'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '153';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Endorsement', 'A quote usually provided by a celebrity to promote a new book, not from a review'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '153';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Promotional headline', 'A promotional phrase which is intended to headline a description of the product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '153';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Feature', 'Text describing a feature of a product to which the publisher wishes to draw attention for promotional purposes'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '153';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Biographical note', 'A note referring to all contributors to a product - NOT linked to a single contributor'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '153';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Publisher''s notice', 'A statement included by a publisher in fulfilment of contractual obligations, such as a disclaimer, sponsor statement, or legal notice of any sort. Note that the inclusion of such a notice cannot and does not imply that a user of the ONIX record is obliged to reproduce it.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '153';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'Excerpt', 'A short excerpt from the work'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '153';
--
-- 154 - Content audience
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '154', 'Content audience',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Unrestricted', 'Any audience'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '154';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Restricted', 'Distribution by agreement between the parties to the ONIX exchange (this value is provided to cover applications where ONIX content includes material which is not for general distribution)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '154';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Booktrade', 'Distributors, bookstores, publisher''s own staff etc'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '154';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'End-customers', 'End-customers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '154';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Librarians', 'Librarians'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '154';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Teachers', 'Teachers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '154';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Students', 'Students'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '154';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Press', 'Press or other media'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '154';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Shopping comparison service', 'Where a specially formatted description is required for this audience'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '154';
--
-- 155 - Content date role
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '155', 'Content date role',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Publication date', 'Nominal date of publication'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '155';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Broadcast date', 'Date when a TV or radio program was / will be broadcast'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '155';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'From date', 'Date from which a content item or supporting resource may be referenced or used'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '155';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'Until date', 'Date until which a content item or supporting resource may be referenced or used'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '155';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'Last updated', 'Date when a resource was last changed or updated'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '155';
--
-- 156 - Cited content type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '156', 'Cited content type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Review', 'The full text of a review in a third-party publication in any medium'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '156';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Bestseller list', 'Bestseller list'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '156';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Media mention', 'Other than a review'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '156';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, '''One locality, one book'' program', '(North America) Inclusion in a program such as ''Chicago Reads'', ''Seattle Reads'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '156';
--
-- 157 - Content source type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '157', 'Content source type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Printed media', 'Printed media'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '157';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Website', 'Website'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '157';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Radio', 'Radio'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '157';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'TV', 'TV'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '157';
--
-- 158 - Resource content type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '158', 'Resource content type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Front cover', 'Front cover'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Back cover', 'Back cover'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Cover / pack', 'Not limited to front or back'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Contributor picture', 'Photograph or portrait of contributor(s)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Series image / artwork', 'Series image / artwork'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Series logo', 'Series logo'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Product image / artwork', 'Product image / artwork'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Product logo', 'Product logo'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Publisher logo', 'Publisher logo'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Imprint logo', 'Imprint logo'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Contributor interview', 'Contributor interview'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Contributor presentation', 'Contributor presentation and/or commentary'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Contributor reading', 'Contributor reading'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'Contributor event schedule', 'Link to a schedule in iCalendar format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'Sample content', 'For example: sample chapter text, page images, screenshots'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '16', true, 'Widget', 'A ''look inside'' feature presented as a small embeddable application'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '17', true, 'Review', 'Use the <TextContent> composite for review quotes carried in the ONIX record. Use the <CitedContent> composite for a third-party review which is referenced from the ONIX record. Use <SupportingResource> only for a review which is offered for reproduction as part of promotional material for the product.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'Other commentary / discussion', 'Other commentary / discussion'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '19', true, 'Reading group guide', 'Reading group guide'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '20', true, 'Teacher''s guide', 'Teacher''s guide'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '21', true, 'Feature article', 'Feature article provided by publisher'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '22', true, 'Character ''interview''', 'Fictional character ''interview'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '23', true, 'Wallpaper / screensaver', 'Wallpaper / screensaver'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '24', true, 'Press release', 'Press release'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '25', true, 'Table of contents', 'A table of contents held on a webpage, not in the ONIX record'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '26', true, 'Trailer', 'A promotional video, similar to a movie trailer (sometimes referred to as a "book trailer")'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';
--
-- 159 - Resource mode
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '159', 'Resource mode',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Application', 'An executable together with data on which it operates'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '159';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Audio', 'A sound recording'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '159';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Image', 'A still image'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '159';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Text', 'Readable text, with or without associated images etc'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '159';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Video', 'Moving images, with or without accompanying sound'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '159';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Multi-mode', 'A website or other supporting resource delivering content in a variety of modes'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '159';
--
-- 160 - Resource feature type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '160', 'Resource feature type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Required credit', 'Credit that must be displayed when a resource is used (eg ''Photo Jerry Bauer'' or ''&copy; Magnum Photo''). Credit text should be carried in <FeatureNote>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '160';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Caption', 'explanatory caption that may accompany a resource (eg use to identify an author in a photograph). Caption text should be carried in <FeatureNote>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '160';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Copyright holder', 'copyright holder of resource (indicative only, as the resource can be used without consultation). Copyright text should be carried in <FeatureNote>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '160';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Length in minutes', 'approx length in minutes of an audio or video resource. <FeatureValue> should contain the length of time as an integer number of minutes'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '160';
--
-- 161 - Resource form
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '161', 'Resource form',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Linkable resource', 'A resource that may be accessed by a hyperlink. The current host (eg the ONIX sender, who may be the publisher) will provide ongoing hosting services for the resource for the active life of the product (or at least until the Until Date specified in <ContentDate>). The ONIX recipient may embed the URL in a consumer facing-website (eg as the src attribute in an <img> link), and need not host an independent copy of the resource'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '161';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Downloadable file', 'A file that may be downloaded on demand for third-party use. The ONIX sender will host a copy of the resource until the specified Until Date, but only for the ONIX recipient''s direct use. The ONIX recipient should download a copy of the resource, and must host an independent copy of the resource if it is used on a consumer-facing website. Special attention should be paid to the ''Last Updated'' <ContentDate> to ensure the independent copy of the resource is kept up to date'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '161';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Embeddable application', 'An application which is supplied in a form which can be embedded into a third-party webpage. As type 02, except the resource contains active content such as JavaScript, Flash, etc'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '161';
--
-- 162 - Resource version feature type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '162', 'Resource version feature type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'File format', 'Resource Version Feature Value carries a code from List 178'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '162';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Image height in pixels', 'Resource Version Feature Value carries an integer'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '162';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Image width in pixels', 'Resource Version Feature Value carries an integer'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '162';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Filename', 'Resource Version Feature Value carries the filename of the supporting resource'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '162';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Download file size in Mbytes', 'Resource Version Feature Value carries a decimal number only'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '162';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'MD5 hash value', 'MD5 hash value of the resource file. <ResourceVersionFeatureValue> should contain the hash value (as 32 hexadecimal digits). Can be used as a cryptographic check on the integrity of a resource after it has been retrieved'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '162';
--
-- 163 - Publishing date role
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '163', 'Publishing date role',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Publication date', 'Nominal date of publication'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '163';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Embargo date', 'If there is an embargo on retail sales in this market before a certain date, the date from which the embargo is lifted and retail sales are permitted'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '163';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Public announcement date', 'Date when a new product may be announced to the general public'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '163';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Trade announcement date', 'Date when a new product may be announced for trade only'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '163';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Date of first publication', 'Date when the work incorporated in a product was first published'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '163';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Last reprint date', 'Date when a product was last reprinted'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '163';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Out-of-print / deletion date', 'Date when a product was declared out-of-print or deleted'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '163';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '16', true, 'Last reissue date', 'Date when a product was last reissued'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '163';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '19', true, 'Publication date of print counterpart', 'Date of publication of a printed book which is the print counterpart to a digital edition'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '163';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '20', true, 'Date of first publication in original language', 'Year when the original language version of work incorporated in a product was first published (note, use only when different from code 11)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '163';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '21', true, 'Forthcoming reissue date', 'Date when a product will be reissued'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '163';
--
-- 164 - Work relation code
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '164', 'Work relation code',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Manifestation of', 'Product X is or includes a manifestation of related work Y'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '164';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Derived from', 'Product X is or includes a manifestation of a work derived from related work Y in one or more of the ways specified in ISTC rules. This relation type is intended to enable products with a common ''parent'' work to be linked without specifying the precise nature of their derivation.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '164';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Related work is derived from this', 'Product X is a manifestation of a work from which related work Y is derived in one or more of the ways specified in ISTC rules (reciprocal of code 02)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '164';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Other work in same collection', 'Product X is a manifestation of a work in the same collection as related work Y'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '164';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Other work by same contributor', 'Product X is a manifestation of a work by the same contributor(s) as related work Y'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '164';
--
-- 165 - Supplier own code type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '165', 'Supplier own code type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Supplier''s sales classification', 'A rating applied by a supplier (typically a wholesaler) to indicate its assessment of the expected or actual sales performance of a product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '165';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Supplier''s bonus eligibility', 'A supplier''s coding of the eligibility of a product for a bonus scheme on overall sales'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '165';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Publisher''s sales classification', 'A rating applied by the publisher to indicate a sales category (eg backlist/frontlist, core stock etc). Use only when the publisher is not the ''supplier'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '165';
--
-- 166 - Supply date role
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '166', 'Supply date role',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Embargo date', 'If there is an embargo on retail sales before a certain date, the date from which the embargo is lifted and retail sales are permitted'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '166';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Expected availability date', 'The date on which physical stock is expected to be available to be shipped to retailers, or a digital product is expected to be released'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '166';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '18', true, 'Last date for returns', 'Last date when returns will be accepted, generally for a product which is being remaindered or put out of print'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '166';
--
-- 167 - Price condition type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '167', 'Price condition type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Includes updates', 'Purchase at this price includes specified updates'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '167';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Must also purchase updates', 'Purchase at this price requires commitment to purchase specified updates, not included in price'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '167';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Updates available', 'Updates may be purchased separately, no minimum commitment required'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '167';
--
-- 168 - Price condition quantity type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '168', 'Price condition quantity type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Time period', 'The price condition quantity represents a time period'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '168';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Number of updates', 'The price condition quantity is a number of updates'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '168';
--
-- 169 - Quantity unit
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '169', 'Quantity unit',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'Units', 'The quantity refers to a unit implied by the quantity type'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '169';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'Weeks', 'Weeks'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '169';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Months', 'Months'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '169';
--
-- 171 - Tax type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '171', 'Tax type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'VAT', 'Value added tax (TVA, IVA, MwSt etc)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '171';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'GST', 'General sales tax'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '171';
--
-- 172 - Currency zone
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '172', 'Currency zone',
           true, true, 'CodeTablesONIX30Char3', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char3(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'EUR', true, 'Eurozone', 'Countries that at the time being have the Euro as their national currency. Deprecated in ONIX 3'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '172';
--
-- 173 - Price date role
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '173', 'Price date role',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'From date', 'Date on which a price becomes effective'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '173';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '15', true, 'Until date', 'Date on which a price ceases to be effective'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '173';
--
-- 174 - Printed on product
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '174', 'Printed on product',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'No', 'Price not printed on product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '174';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Yes', 'Price printed on product'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '174';
--
-- 175 - Product form detail
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '175', 'Product form detail',
           true, true, 'CodeTablesONIX30Char4', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A101', true, 'CD standard audio format', 'CD ''red book'' format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A102', true, 'SACD super audio format', 'SACD super audio format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A103', true, 'MP3 format', 'MP3 format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A104', true, 'WAV format', 'WAV format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A105', true, 'Real Audio format', 'Real Audio format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A106', true, 'WMA', 'Windows Media Audio format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A107', true, 'AAC', 'Advanced Audio Coding format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A108', true, 'Ogg/Vorbis', 'Vorbis audio format in the Ogg container'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A109', true, 'Audible', 'Audio format proprietary to Audible.com'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A110', true, 'FLAC', 'Free lossless audio codec'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A111', true, 'AIFF', 'Audio Interchangeable File Format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A112', true, 'ALAC', 'Apple Lossless Audio Codec'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A201', true, 'DAISY 2: full audio with title only (no navigation)', 'Deprecated, as does not meet DAISY 2 standard. Use conventional audiobook codes instead'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A202', true, 'DAISY 2: full audio with navigation (no text)', 'DAISY 2: full audio with navigation (no text)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A203', true, 'DAISY 2: full audio with navigation and partial text', 'DAISY 2: full audio with navigation and partial text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A204', true, 'DAISY 2: full audio with navigation and full text', 'DAISY 2: full audio with navigation and full text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A205', true, 'DAISY 2: full text with navigatino and partial audio', 'Reading systems may provide full audio via text-to-speech'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A206', true, 'DAISY 2: full text with navigation and no audio', 'Reading systems may provide full audio via text-to-speech'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A207', true, 'DAISY 3: full audio with title only (no navigation)', 'Deprecated, as does not meet DAISY 3 standard. Use conventional audiobook codes instead'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A208', true, 'DAISY 3: full audio with navigation (no text)', 'DAISY 3: full audio with navigation (no text)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A209', true, 'DAISY 3: full audio with navigation and partial text', 'DAISY 3: full audio with navigation and partial text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A210', true, 'DAISY 3: full audio with navigation and full text', 'DAISY 3: full audio with navigation and full text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A211', true, 'DAISY 3: full textwith navigation and partial audio', 'Reading systems may provide full audio via text-to-speech'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A212', true, 'DAISY 3: full text with navigation and no audio', 'Reading systems may provide full audio via text-to-speech'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B101', true, 'Mass market (rack) paperback', 'In North America, a category of paperback characterized partly by page size (typically 4&frac14; x 7 1/8 inches) and partly by target market and terms of trade. Use with Product Form code BC.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B102', true, 'Trade paperback (US)', 'In North America, a category of paperback characterized partly by page size and partly by target market and terms of trade. AKA ''quality paperback'', and including textbooks. Most paperback books sold in North America except ''mass-market'' (B101) and ''tall rack'' (B107) are correctly described with this code. Use with Product Form code BC.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B103', true, 'Digest format paperback', 'In North America, a category of paperback characterized by page size and generally used for children''s books; use with Product Form code BC. Note: was wrongly shown as B102 (duplicate entry) in Issue 3.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B104', true, 'A-format paperback', 'In UK, a category of paperback characterized by page size (normally 178 x 111 mm approx); use with Product Form code BC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B105', true, 'B-format paperback', 'In UK, a category of paperback characterized by page size (normally 198 x 129 mm approx); use with Product Form code BC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B106', true, 'Trade paperback (UK)', 'In UK, a category of paperback characterized partly by size (usually in traditional hardback dimensions), and often used for paperback originals; use with Product Form code BC (replaces ''C-format'' from former List 8)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B107', true, 'Tall rack paperback (US)', 'In North America, a category of paperback characterised partly by page size and partly by target market and terms of trade; use with Product Form code BC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B108', true, 'A5: Tankobon', 'Japanese hardcover format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B109', true, 'B5: Tankobon', 'Japanese hardcover format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B110', true, 'B6: Tankobon', 'Japanese hardcover format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B111', true, 'A6: Bunko', 'Japanese paperback format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B112', true, 'B40-dori: Shinsho', 'Japanese paperback format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B113', true, 'Pocket (Sweden)', 'A Swedish paperback format, use with Product Form Code BC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B114', true, 'Storpocket (Sweden)', 'A Swedish paperback format, use with Product Form Code BC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B115', true, 'Kartonnage (Sweden)', 'A Swedish hardback format, use with Product Form Code BB'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B116', true, 'Flexband (Sweden)', 'A Swedish softback format, use with Product Form Code BC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B117', true, 'Mook', 'In Japan, a softback book in the format of a magazine but sold like a book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B118', true, 'Dwarsligger', 'A softback book in a specially compact proprietary format with pages printed in landscape on very thin paper - see www.dwarsligger.com.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B119', true, '46 size', 'Japanese format: 188x127mm'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B120', true, '46-Henkei size', 'Japanese format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B121', true, 'A4', '297x210mm'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B122', true, 'A4-Henkei size', 'Japanese format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B123', true, 'A5-Henkei size', 'Japanese format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B124', true, 'B5-Henkei size', 'Japanese format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B125', true, 'B6-Henkei size', 'Japanese format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B126', true, 'AB size', 'Japanese format: 257x210mm'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B127', true, 'B7 size', 'Japanese format: 128x81mm'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B128', true, 'Kiku size', 'Japanese format: 218x152mm'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B129', true, 'Kiku-Henkei size', 'Japanese format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B201', true, 'Coloring / join-the-dot book', 'Coloring / join-the-dot book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B202', true, 'Lift-the-flap book', 'Lift-the-flap book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B204', true, 'Miniature book', 'Note: was wrongly shown as B203 (duplicate entry) in Issue 3'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B205', true, 'Moving picture / flicker book', 'Moving picture / flicker book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B206', true, 'Pop-up book', 'Pop-up book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B207', true, 'Scented / ''smelly'' book', 'Scented / ''smelly'' book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B208', true, 'Sound story / ''noisy'' book', 'Sound story / ''noisy'' book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B209', true, 'Sticker book', 'Sticker book'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B210', true, 'Touch-and-feel book', 'A book whose pages have a variety of textured inserts designed to stimulate tactile exploration: see also B214 and B215'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B212', true, 'Die-cut book', 'A book which is cut into a distinctive non-rectilinear shape and/or in which holes or shapes have been cut internally. (''Die-cut'' is used here as a convenient shorthand, and does not imply strict limitation to a particular production process.)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B213', true, 'Book-as-toy', 'A book which is also a toy, or which incorporates a toy as an integral part. (Do not, however, use B213 for a multiple-item product which includes a book and a toy as separate items.)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B214', true, 'Soft-to-touch book', 'A book whose cover has a soft textured finish, typically over board'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B215', true, 'Fuzzy-felt book', 'A book with detachable felt pieces and textured pages on which they can be arranged'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B221', true, 'Picture book', 'Children''s picture book: use with applicable Product Form code'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B222', true, '''Carousel'' Book', '(aka ''Star'' book). Tax treatment of products may differ from that of products with similar codes such as Book as toy or Pop-up book)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B301', true, 'Loose leaf - sheets and binder', 'Use with Product Form code BD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B302', true, 'Loose leaf - binder only', 'Use with Product Form code BD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B303', true, 'Loose leaf - sheets only', 'Use with Product Form code BD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B304', true, 'Sewn', 'AKA stitched; for ''saddle-sewn'', see code B310'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B305', true, 'Unsewn / adhesive bound', 'Including ''perfect bound'', ''glued'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B306', true, 'Library binding', 'Strengthened binding intended for libraries'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B307', true, 'Reinforced binding', 'Strengthened binding, not specifically intended for libraries'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B308', true, 'Half bound', 'Must be accompanied by a code specifiying a material, eg ''half-bound real leather'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B309', true, 'Quarter bound', 'Must be accompanied by a code specifiying a material, eg ''quarter bound real leather'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B310', true, 'Saddle-sewn', 'AKA ''saddle-stitched'' or ''wire-stitched'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B311', true, 'Comb bound', 'Round or oval plastic forms in a clamp-like configuration: use with Product Form code BE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B312', true, 'Wire-O', 'Twin loop metal or plastic spine: use with Product Form code BE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B313', true, 'Concealed wire', 'Cased over Wire-O binding: use with Product Form code BE'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B401', true, 'Cloth over boards', 'AKA fabric, linen over boards'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B402', true, 'Paper over boards', 'Paper over boards'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B403', true, 'Leather, real', 'Leather, real'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B404', true, 'Leather, imitation', 'Leather, imitation'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B405', true, 'Leather, bonded', 'Leather, bonded'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B406', true, 'Vellum', 'Vellum'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B409', true, 'Cloth', 'Cloth, not necessarily over boards - cf B401'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B410', true, 'Imitation cloth', 'Spanish ''simil-tela'''
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B411', true, 'Velvet', 'Velvet'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B412', true, 'Flexible plastic/vinyl cover', 'AKA ''flexibound'': use with Product Form code BC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B413', true, 'Plastic-covered', 'Plastic-covered'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B414', true, 'Vinyl-covered', 'Vinyl-covered'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B415', true, 'Laminated cover', 'Book, laminating material unspecified: use L101 for "whole product laminated", eg a laminated sheet map or wallchart'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B501', true, 'With dust jacket', 'Type unspecified'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B502', true, 'With printed dust jacket', 'Used to distinguish from B503'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B503', true, 'With translucent dust cover', 'With translucent paper or plastic protective cover'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B504', true, 'With flaps', 'For paperback with flaps'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B505', true, 'With thumb index', 'With thumb index'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B506', true, 'With ribbon marker(s)', 'If the number of markers is significant, it can be stated as free text in <ProductFormDescription>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B507', true, 'With zip fastener', 'With zip fastener'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B508', true, 'With button snap fastener', 'With button snap fastener'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B509', true, 'With leather edge lining', 'AKA yapp edge?'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B510', true, 'Rough front', 'With edge trimming such that the front edge is ragged, not neatly and squarely trimmed: AKA deckle edge, feather edge, uncut edge, rough cut'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B601', true, 'Turn-around book', 'A book in which half the content is printed upside-down, to be read the other way round. Also known as a ''flip-book'' (usually an omnibus of two works)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B602', true, 'Unflipped manga format', 'Manga with pages and panels in the sequence of the original Japanese, but with Western text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B701', true, 'UK Uncontracted Braille', 'Single letters only. Was formerly identified as UK Braille Grade 1'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B702', true, 'UK Contracted Braille', 'With some letter combinations. Was formerly identified as UK Braille Grade 2'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B703', true, 'US Braille', 'DEPRECATED- use B704/B705 as appropriate instead'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B704', true, 'US Uncontracted Braille', 'US Uncontracted Braille'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B705', true, 'US Contracted Braille', 'US Contracted Braille'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B706', true, 'Unified English Braille', 'Unified English Braille'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'B707', true, 'Moon', 'Moon embossed alphabet, used by some print-impaired readers who have difficulties with Braille'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D101', true, 'Real Video format', 'Real Video format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D102', true, 'Quicktime format', 'Quicktime format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D103', true, 'AVI format', 'AVI format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D104', true, 'Windows Media Video format', 'Windows Media Video format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D105', true, 'MPEG-4', 'MPEG-4'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D201', true, 'MS-DOS', 'Use with an applicable Product Form code D*; note that more detail of operating system requirements can be given in a Product Form Feature composite'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D202', true, 'Windows', 'Use with an applicable Product Form code D*; see note on D201'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D203', true, 'Macintosh', 'Use with an applicable Product Form code D*; see note on D201'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D204', true, 'UNIX / LINUX', 'Use with an applicable Product Form code D*; see note on D201'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D205', true, 'Other operating system(s)', 'Use with an applicable Product Form code D*; see note on D201'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D206', true, 'Palm OS', 'Use with an applicable Product Form code D*; see note on D201'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D207', true, 'Windows Mobile', 'Use with an applicable Product Form code D*; see note on D201'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D301', true, 'Microsoft XBox', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D302', true, 'Nintendo Gameboy Color', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D303', true, 'Nintendo Gameboy Advanced', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D304', true, 'Nintendo Gameboy', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D305', true, 'Nintendo Gamecube', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D306', true, 'Nintendo 64', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D307', true, 'Sega Dreamcast', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D308', true, 'Sega Genesis/Megadrive', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D309', true, 'Sega Saturn', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D310', true, 'Sony PlayStation 1', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D311', true, 'Sony PlayStation 2', 'Use with Product Form code DE or DB as applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D312', true, 'Nintendo Dual Screen', 'Nintendo Dual Screen'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D313', true, 'Sony PlayStation 3', 'Sony PlayStation 3'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D314', true, 'Xbox 360', 'Xbox 360'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D315', true, 'Nintendo Wii', 'Nintendo Wii'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D316', true, 'Sony PlayStation Portable (PSP)', 'Sony PlayStation Portable (PSP)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E100', true, 'Other', 'No code allocated for this e-publication format yet'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E101', true, 'EPUB', 'The Open Publication Structure / OPS Container Format standard of the International Digital Publishing Forum (IDPF) [File extension .epub]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E102', true, 'OEB', 'The Open EBook format of the IDPF, a predecessor of the full EPUB format, still (2008) supported as part of the latter [File extension .opf]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E103', true, 'DOC', 'Microsoft Word binary document format [File extension .doc]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E104', true, 'DOCX', 'Office Open XML / Microsoft Word XML document format (ISO/IEC 29500:2008) [File extension .docx]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E105', true, 'HTML', 'HyperText Mark-up Language [File extension .html, .htm]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E106', true, 'ODF', 'Open Document Format [File extension .odt]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E107', true, 'PDF', 'Portable Document Format (ISO 32000-1:2008) [File extension .pdf]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E108', true, 'PDF/A', 'PDF archiving format defined by ISO 19005-1:2005 [File extension .pdf]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E109', true, 'RTF', 'Rich Text Format [File extension .rtf]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E110', true, 'SGML', 'Standard Generalized Mark-up Language'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E111', true, 'TCR', 'A compressed text format mainly used on Psion handheld devices [File extension .tcr]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E112', true, 'TXT', 'Text file format [File extension .txt]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E113', true, 'XHTML', 'Extensible Hypertext Markup Language [File extension .xhtml, .xht, .xml, .html, .htm]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E114', true, 'zTXT', 'A compressed text format mainly used on Palm handheld devices [File extension .pdb - see also E121, E125, E130]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E115', true, 'XPS', 'XML Paper Specification format [File extension .xps]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E116', true, 'Amazon Kindle', 'A format proprietary to Amazon for use with its Kindle reading device [File extension .azw]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E117', true, 'BBeB', 'A Sony proprietary format for use with the Sony Reader and LIBRI&eacute; reading devices [File extension .lrf]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E118', true, 'DXReader', 'A proprietary format for use with DXReader software'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E119', true, 'EBL', 'A format proprietary to the Ebook Library service'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E120', true, 'Ebrary', 'A format proprietary to the Ebrary service'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E121', true, 'eReader', 'A proprietary format for use with eReader (AKA ''Palm Reader'') software on various hardware platforms [File extension .pdb - see also E114, E125, E130]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E122', true, 'Exebook', 'A proprietary format with its own reading system for Windows platforms [File extension .exe]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E123', true, 'Franklin eBookman', 'A proprietary format for use with the Franklin eBookman reader'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E124', true, 'Gemstar Rocketbook', 'A proprietary format for use with the Gemstar Rocketbook reader [File extension .rb]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E125', true, 'iSilo', 'A proprietary format for use with iSilo software on various hardware platforms [File extension .pdb - see also E114, E121, E130]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E126', true, 'Microsoft Reader', 'A proprietary format for use with Microsoft Reader software on Windows and Pocket PC platforms [File extension .lit]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E127', true, 'Mobipocket', 'A proprietary format for use with Mobipocket software on various hardware platforms [File extension .prc]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E128', true, 'MyiLibrary', 'A format proprietary to the MyiLibrary service'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E129', true, 'NetLibrary', 'A format proprietary to the NetLibrary service'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E130', true, 'Plucker', 'A proprietary format for use with Plucker reader software on Palm and other handheld devices [File extension .pdb - see also E114, E121, E125]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E131', true, 'VitalBook', 'A format proprietary to the VitalSource service'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E132', true, 'Vook', 'A proprietary digital product combining text and video content and available to be used online or as a downloadable application for a mobile device - see www.vook.com'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E133', true, 'Google Edition', 'An epublication made available by Google in association with a publisher; readable online on a browser-enabled device and offline on designated ebook readers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E134', true, 'Book ''app'' for iOS', 'Epublication packaged as application for iOS (eg Apple iPhone, iPad etc), containing both executable code and content. Use <ProductContentType> to describe content, and <ProductFormFeatureType> to list detailed technical requirements'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E135', true, 'Book ''app'' for Android', 'Epublication packaged as application for Android (eg Android phone or tablet), containing both executable code and content. Use <ProductContentType> to describe content, and <ProductFormFeatureType> to list detailed technical requirements'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E136', true, 'Book ''app'' for other operating system', 'Epublication packaged as application, containing both executable code and content. Use where other ''app'' codes are not applicable. Technical requirements such as target operating system and/or device should be provided eg in <ProductFormFeatureType>. Content type (text or text plus various ''enhancements'') may be described with <ProductContentType>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'L101', true, 'Laminated', 'Whole product laminated (eg laminated map, fold-out chart, wallchart, etc): use B415 for book with laminated cover'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P101', true, 'Desk calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P102', true, 'Mini calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P103', true, 'Engagement calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P104', true, 'Day by day calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P105', true, 'Poster calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P106', true, 'Wall calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P107', true, 'Perpetual calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P108', true, 'Advent calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P109', true, 'Bookmark calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P110', true, 'Student calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P111', true, 'Project calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P112', true, 'Almanac calendar', 'Use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P113', true, 'Other calendar', 'A calendar that is not one of the types specified elsewhere: use with Product Form code PC'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P114', true, 'Other calendar or organiser product', 'A product that is associated with or ancillary to a calendar or organiser, eg a deskstand for a calendar, or an insert for an organiser: use with Product Form code PC or PS'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P201', true, 'Hardback (stationery)', 'Stationery item in hardback book format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P202', true, 'Paperback / softback (stationery)', 'Stationery item in paperback/softback book format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P203', true, 'Spiral bound (stationery)', 'Stationery item in spiral-bound book format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'P204', true, 'Leather / fine binding (stationery)', 'Stationery item in leather-bound book format, or other fine binding'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'V201', true, 'PAL', 'TV standard for video or DVD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'V202', true, 'NTSC', 'TV standard for video or DVD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'V203', true, 'SECAM', 'TV standard for video or DVD'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '175';
--
-- 176 - Product form feature value - operating system
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '176', 'Product form feature value - operating system',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Android', 'An Open Source mobile device operating system originally developed by Google and supported by the Open Handset Alliance'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '176';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'BlackBerry OS', 'A proprietary operating system supplied by Research In Motion for its BlackBerry handheld devices'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '176';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'iOS', 'A proprietary operating system based on Mac OS X supplied by Apple for its iPhone, iPad and iPod Touch handheld devices'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '176';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Linux', 'An operating system based on the Linux kernel'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '176';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '05', true, 'Mac OS', '[A proprietary operating system supplied by Apple on Macintosh computers up to 2002] DEPRECATED - use code 13 for all Mac OS versions'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '176';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '06', true, 'Mac OS X', '[A proprietary operating system supplied by Apple on Macintosh computers from 2001/2002] DEPRECATED - use code 13 for all Mac OS versions'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '176';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '07', true, 'Palm OS', 'A proprietary operating system (AKA Garnet OS) originally developed for handheld devices'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '176';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '08', true, 'webOS', 'A proprietry Linux-based operating system for handheld devices, originally developed by Palm (now owned by HP)'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '176';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '09', true, 'Symbian', 'An operating system for hand-held devices, originally developed as a proprietary system, but planned to become wholly Open Source by 2010'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '176';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '10', true, 'Windows', 'A proprietary operating system supplied by Microsoft'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '176';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '11', true, 'Windows CE', 'A proprietary operating system (AKA Windows Embedded Compact, WinCE) supplied by Microsoft for small-scale devices'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '176';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '12', true, 'Windows Mobile', 'A proprietary operating system supplied by Microsoft for mobile devices'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '176';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '13', true, 'Mac OS', 'A proprietary operating system supplied by Apple on Macintosh computers'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '176';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '14', true, 'Windows Phone 7', 'A proprietary operating system supplied by Microsoft for mobile devices, successor to Windows Mobile'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '176';
--
-- 177 - Person / organization date role
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '177', 'Person / organization date role',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '50', true, 'Date of birth', 'Date of birth'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '177';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '51', true, 'Date of death', 'Date of death'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '177';
--
-- 178 - Supporting resource file format
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '178', 'Supporting resource file format',
           true, true, 'CodeTablesONIX30Char4', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A103', true, 'MP3', 'MP3'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '178';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A104', true, 'WAV', 'WAV'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '178';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A105', true, 'Real Audio', 'Real Audio'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '178';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A106', true, 'WMA', 'Windows Media Audio format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '178';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'A107', true, 'AAC', 'Advanced Audio Coding format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '178';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D101', true, 'Real Video', 'Real Video'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '178';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D102', true, 'QuickTime', 'QuickTime'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '178';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D103', true, 'AVI', 'AVI'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '178';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D104', true, 'WMV', 'Windows Media Video format'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '178';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D105', true, 'MPEG-4', 'MPEG-4'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '178';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D106', true, 'FLV', 'Flash Video'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '178';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D107', true, 'SWF', 'ShockWave'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '178';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D401', true, 'PDF', 'PDF'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '178';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D501', true, 'GIF', 'GIF'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '178';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D502', true, 'JPEG', 'JPEG'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '178';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D503', true, 'PNG', 'PNG'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '178';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'D504', true, 'TIFF', 'TIFF'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '178';
INSERT INTO CodeTablesONIX30Char4(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'E101', true, 'EPUB', 'The Open Publication Structure / OPS Container Format standard of the International Digital Publishing Forum (IDPF) [File extension .epub]'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '178';
--
-- 179 - Price code type
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '179', 'Price code type',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Proprietary', 'A publisher or retailer''s proprietary code list which identifies particular codes with particular price points, price tiers or bands.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '179';
--
-- 184 - EU Toy Safety Directive hazard warning
--
INSERT INTO CodeTables(CodeTableId, TableDomain, TableName, TableDescription,
                       FlagONIX30, FlagGrouped,
                       DataTableName, DataTableSchema, DataTableCodeField, DataTableNameField,
                       FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
    VALUES(nextval('CodeTables_CodeTableId_SEQ'), 'ONIX', '184', 'EU Toy Safety Directive hazard warning',
           true, true, 'CodeTablesONIX30Char2', 'eCommerce', NULL, NULL,
           false, CURRENT_TIMESTAMP, NULL, NULL);

-- list data
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '00', true, 'No warning', 'Use to provide positive indication that no warnings are applicable'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '184';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '01', true, 'Carries ''CE'' logo', 'Carries ''CE'' logo'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '184';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '02', true, 'Carries minimum age warning', 'Use to specify age (in years, or years and months). Provide specific wording in <ProductFormFeatureDescription>.'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '184';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '03', true, 'Carries EU Toy Safety Directive ''Unsuitable for children ages 0-3'' warning logo', 'Carries logo, and must be accompanied by the default warning ''Not suitable for children under 36 months'' (or its approved equivalent in a language other than English, as appropriate), unless specific wording is provided in <ProductFormFeatureDescription>. If specific alternative wording is carried in <ProductFormFeatureDescription>, this must be used in place of the default text'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '184';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, '04', true, 'Carries EU Toy Safety Directive hazard warning', 'Exact text of warning must be included in <ProductFormFeatureDescription>'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '184';

