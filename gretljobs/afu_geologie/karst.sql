SELECT 
    ogc_fid AS t_id, 
    wkb_geometry AS geometrie,     
    CASE
        WHEN symbol::int = 9
            THEN 'Karstphaenomen_undifferenziert'
        WHEN symbol::int = 200
            THEN 'Hoehle'
        WHEN symbol::int = 201
            THEN 'Doline'
        WHEN symbol::int = 202
            THEN 'Hoehle_aktiv'    
    END AS typ

FROM 
    geologie.karst
WHERE
    archive = 0
;
        
                 
