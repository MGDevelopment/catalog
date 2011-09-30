BEGIN
    INSERT INTO TmpRelacionados(Id_Articulo, F_Alta, Sin_Stock)
    SELECT          A.Id_Articulo     AS Id_Articulo,
                    A.F_Alta          AS F_Alta,
                    CASE D.Pedido_Especial
                        WHEN 'S' THEN           1
                        ELSE                    0
                    END               AS Sin_Stock
        FROM        Articulos A
        INNER JOIN  Disponibilidades D
            ON      A.Id_Disponibilidad = D.Id_Disponibilidad AND
                    D.Id_Esquema = 'PROD'
        WHERE       A.Activo = 'SI' AND
                    A.Habilitado_Tematika = 'S' AND
                    A.Categoria_Seccion IN (1, 3, 4, 5);
    COMMIT;
END;