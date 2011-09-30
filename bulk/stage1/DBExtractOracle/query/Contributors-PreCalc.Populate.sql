BEGIN
    INSERT INTO DBE_ContributorPreCalc(Id_Autor, Last_Name, First_Name, Titles)
    SELECT      Id_Autor                AS Id_Autor,
                AUTOR_NAME_PART('L', Descripcion, NULL)
                                        AS Last_Name,
                AUTOR_NAME_PART('N', Descripcion, NULL)
                                        AS First_Name,
                AUTOR_NAME_PART('T', Descripcion, NULL)
                                        AS Titles
        FROM Autores;
    COMMIT;
END;