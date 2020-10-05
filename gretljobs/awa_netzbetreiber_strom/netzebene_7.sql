SELECT 
    ST_GeometryN(wkb_geometry, generate_series(1, ST_NumGeometries(wkb_geometry))) AS geometrie, 
    name AS netzgebiet_name, 
    betreiber,  
    CASE
        WHEN konflikt = 0
            THEN 'kein_Konflikt'
        WHEN konflikt = 1
            THEN 'Zuteilung_unklar'
    END AS konflikt
FROM 
    netzbetreiber_strom.netz_7
WHERE
    archive = 0
;
