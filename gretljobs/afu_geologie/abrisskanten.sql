SELECT 
    ogc_fid AS t_id, 
    wkb_geometry AS geometrie,     
    CASE
        WHEN symbol::int = 112
            THEN 'Abrisskante'
        WHEN symbol::int = 113
            THEN 'Nackental'
        WHEN symbol::int = 116
            THEN 'Abflussrinne'
        WHEN symbol::int = 117
            THEN 'Terrassenrand'    
    END AS typ

FROM 
    geologie.abrkt AS abrisskanten
WHERE
    archive = 0
;
        
                 
