/****************************************************************
 *
 * Load other code tables and complete other needed codes (specialy
 * non-ONIX extension codes).
 *
 ****************************************************************/

--
-- IdentifierTypes
--
-- ONIX derived types
--
INSERT INTO IdentifierTypes(IdentifierTypeId, Name, CodeTableId, Value,
                        FlagProprietary, Description,
                        FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
SELECT          nextval('IdentifierTypes_IdentifierTypeId_SEQ')
                                    AS IdentifierTypeId,
                CT.TableDomain || '.' || CT.TableName || '.' || CT2.CodeValue
                                    AS Name,
                CT.CodeTableId      AS CodeTableId,
                CT2.CodeValue       AS Value,
                false               AS FlagProprietary,
                NULL                AS Description,
                false               AS FlagDeleted,
                CURRENT_TIMESTAMP   AS CreationDate,
                NULL                AS LastUpdateDate,
                NULL                AS DeletionDate
    FROM        CodeTables CT
    INNER JOIN  CodeTablesONIX30Char2 CT2
        ON      CT.CodeTableId = CT2.CodeTableId AND
                CT2.Name NOT LIKE 'Proprietary%'
    WHERE       CT.TableDomain = 'ONIX' AND CT.TableName IN ('5', '13', '27', '44')
    ORDER BY    CT.CodeTableId, CT2.CodeValue;

--
-- value for ISSN on list 5
--
INSERT INTO IdentifierTypes(IdentifierTypeId, Name, CodeTableId, Value,
                        FlagProprietary, Description,
                        FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
SELECT          nextval('IdentifierTypes_IdentifierTypeId_SEQ')
                                    AS IdentifierTypeId,
                CT.TableDomain || '.' || CT.TableName || '.' || 'YS'
                                    AS Name,
                CT.CodeTableId      AS CodeTableId,
                'YS'                AS Value,
                false               AS FlagProprietary,
                NULL                AS Description,
                false               AS FlagDeleted,
                CURRENT_TIMESTAMP   AS CreationDate,
                NULL                AS LastUpdateDate,
                NULL                AS DeletionDate
    FROM        CodeTables CT
    WHERE       CT.TableDomain = 'ONIX' AND CT.TableName = '5';

--
-- IdentifierTypes
--
-- com.ilhsa proprietary types
--
INSERT INTO IdentifierTypes(IdentifierTypeId, Name, CodeTableId, Value,
                        FlagProprietary, Description,
                        FlagDeleted, CreationDate, LastUpdateDate, DeletionDate)
SELECT          nextval('IdentifierTypes_IdentifierTypeId_SEQ')
                                    AS IdentifierTypeId,
                CT.TableDomain || '.' || CT.TableName || '.' || 'com.ilhsa'
                                    AS Name,
                CT.CodeTableId      AS CodeTableId,
                'com.ilhsa'         AS Value,
                false               AS FlagProprietary,
                NULL                AS Description,
                false               AS FlagDeleted,
                CURRENT_TIMESTAMP   AS CreationDate,
                NULL                AS LastUpdateDate,
                NULL                AS DeletionDate
    FROM        CodeTables CT
    WHERE       CT.TableDomain = 'ONIX' AND CT.TableName IN ('5', '13', '27', '44')
    ORDER BY    CT.CodeTableId;

--
-- 5 - Product Identifier Type Code
--
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'YS', false, 'Serial Publication', 'Serial Publication'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '5';

--
-- 28 - Audience Code
--
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Y1', false, 'Apta todo público', 'Apta para todo público'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '28';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Y2', false, 'Apta para mayores de 13 años', 'Apta para mayores de 13 años'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '28';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Y3', false, 'Apta para mayores de 18 años', 'Apta para mayores de 18∂ años'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '28';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Y4', false, 'Apta para mayores de 16 años', 'Apta para mayores de 16 años'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '28';

--
-- 51 - Product relation code
--
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'YR', false, 'Yenny - Productos Relacionados', 'Productos que se vendieron juntos en Yenny'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'YV', false, 'Yenny - Vidrieras', 'Productos que conforman la Vidriera'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '51';

--
-- 158 - Resource Content Type
--
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'Y1', false, 'Yenny - Portada Chica', 'Portada Chica'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '158';

--
-- 165 - Supplier own code type
--
INSERT INTO CodeTablesONIX30Char2(CodeTableId, CodeValue, FlagONIXNative, Name, Description)
SELECT  CodeTableId, 'YD', false, 'Yenny - Disponibilidad', 'Registro de disponibilidad de Yenny'
    FROM CodeTables
    WHERE TableDomain = 'ONIX' AND TableName = '165';
