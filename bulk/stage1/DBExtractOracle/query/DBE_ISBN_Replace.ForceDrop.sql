BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE DBE_ISBN_Replace';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;