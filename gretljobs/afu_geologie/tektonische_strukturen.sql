SELECT 
    wkb_geometry AS geometrie, 
    CASE
        WHEN symbol::int = 101
            THEN 'Antiklinalachse'
        WHEN symbol::int = 102
            THEN 'Synklinalachse'
        WHEN symbol::int = 105
            THEN 'Ueberschiebung'
        WHEN symbol::int = 106
            THEN 'Ueberschiebung_vermutet' 
        WHEN symbol::int = 107
            THEN 'rheintalische_Verwerfung'
        WHEN symbol::int = 108
            THEN 'rheintalische_Verwerfung_vermutet'
        WHEN symbol::int = 109
            THEN 'Verwerfung'
        WHEN symbol::int = 110
            THEN 'Verwerfung_vermutet'
            
    END AS typ
FROM 
    geologie.tekton
WHERE
    archive = 0
AND
    ST_Length(wkb_geometry) > 0.01   -- 2 Linienstücke kleiner
;
        
                 
