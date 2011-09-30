BEGIN
    INSERT INTO TmpRela(Id_Articulo)
    SELECT    DISTINCT Id_Articulo
        FROM Rco_Articulos_Relacionados;
    COMMIT;
    DELETE FROM TmpRela
        WHERE   Id_Articulo NOT IN (SELECT Id_Articulo FROM TmpRelacionados);
    COMMIT;
END;