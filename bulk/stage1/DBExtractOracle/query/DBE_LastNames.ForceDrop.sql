BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE DBE_LastNames';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;