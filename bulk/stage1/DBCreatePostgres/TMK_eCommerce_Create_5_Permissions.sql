/*
 * grant permissions to eCommerce on every object from schema eCommerce
 */
GRANT   SELECT, INSERT, UPDATE, DELETE, TRUNCATE, EXECUTE, TEMPORARY
    ON  ALL TABLES IN SCHEMA eCommerce
    TO  eCommerce;

GRANT   CONNECT
    ON  DATABASE eCommerce
    TO  eCommerce;
