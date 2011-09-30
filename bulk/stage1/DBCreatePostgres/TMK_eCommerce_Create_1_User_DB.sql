/*
 * create the user
 */
CREATE USER eCommerce
    WITH    ENCRYPTED PASSWORD 'vitabe12';

/*
 * create the database
 */
CREATE DATABASE eCommerce
    WITH    OWNER = eCommerce
            TEMPLATE = template0
            ENCODING = 'UTF-8'
            LC_COLLATE = 'es_AR.utf8'
            LC_CTYPE = 'es_AR.utf8';

