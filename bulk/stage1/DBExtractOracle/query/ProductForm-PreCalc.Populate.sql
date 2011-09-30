BEGIN
    INSERT INTO DBE_ProductFormPreCalc(Id_Articulo, Formato_Tapas, Tipo_Articulo, Categoria_Seccion)
    SELECT          Id_Articulo             AS Id_Articulo,
                    CASE Formato_Tapas
                        WHEN 'ACARTONADOS' THEN             'BH'
                        WHEN 'LUJO' THEN                    'BG'
                        WHEN 'RUSTICA' THEN                 'BC'
                        WHEN 'RUSTICA ACABALLADO' THEN      'BC'
                        WHEN 'RUSTICA BOLSILLO' THEN        'BC'
                        WHEN 'TAPA DURA' THEN               'BB'
                        WHEN 'TAPA DURA BOLSILLO' THEN      'BB'
                        ELSE                                NULL
                    END                     AS Formato_Tapas,
                    CASE Id_Tipo_Articulo
                        WHEN '00001' THEN                   'BA' -- Libros
                        WHEN '00002' THEN                   'PZ' -- Revistas
                        WHEN '00004' THEN                   'PK' -- Posters
                        WHEN '00005' THEN                   'PC' -- Agenda / Almanaque
                        WHEN '00006' THEN                   'PZ' -- Tarjetas
                        WHEN '00007' THEN                   'AB' -- Cassettes
                        WHEN '00008' THEN                   'VA' -- Videos
                        WHEN '00009' THEN                   'DB' -- CD'S
                        WHEN '00010' THEN                   'CA' -- Mapas Y Planisferios
                        WHEN '00011' THEN                   'ZD' -- Juguetes
                        WHEN '00015' THEN                   'ZE' -- Juegos de Mesa
                        WHEN '00016' THEN                   'PN' -- Reproducciones de Arte
                        WHEN '00031' THEN                   'BA' -- Libro Electronico
                        WHEN '00033' THEN                   'ZA' -- Merchandizing
                        WHEN '00106' THEN                   'AE' -- LP Vinilo
                        WHEN '00107' THEN                   'AB' -- Cassette Musical
                        WHEN '00108' THEN                   'VI' -- Video Musical
                        WHEN '00109' THEN                   'AC' -- CD Musical
                        WHEN '00110' THEN                   'ZA' -- Tarjeta Musical
                        WHEN '00125' THEN                   'VI' -- DVD
                        WHEN '00148' THEN                   'VO' -- Blu-Ray
                        WHEN '06100' THEN                   'ZA' -- Hardware
                        WHEN '06200' THEN                   'EA' -- Software
                        WHEN '08010' THEN                   'ZA' -- Bolsos
                        WHEN '08110' THEN                   'ZA' -- Accesorios
                        WHEN '08200' THEN                   'ZA' -- Cintas Video
                    END                     AS Tipo_Articulo,
                    CASE Categoria_Seccion
                        WHEN 1 THEN                         'BA'        -- libro, detail unspecified
                        WHEN 4 THEN                         'AA'        -- audio, detail unspecified
                        WHEN 5 THEN                         'VA'        -- video, detail unspecified
                        ELSE                                'ZA'        -- general merchandize
                    END                     AS Categoria_Seccion
        FROM        Articulos
        ORDER BY    Id_Articulo;
    COMMIT;
END;