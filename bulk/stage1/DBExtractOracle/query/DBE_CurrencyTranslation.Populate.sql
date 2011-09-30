BEGIN
    INSERT INTO DBE_CurrencyTranslation(Id_Moneda, CurrencyCode) VALUES('1',  'ARS'); COMMIT;
    INSERT INTO DBE_CurrencyTranslation(Id_Moneda, CurrencyCode) VALUES('2',  'USD'); COMMIT;
    INSERT INTO DBE_CurrencyTranslation(Id_Moneda, CurrencyCode) VALUES('3',  'EUR'); COMMIT;
    INSERT INTO DBE_CurrencyTranslation(Id_Moneda, CurrencyCode) VALUES('6',  'GPB'); COMMIT;
    COMMIT;
END;