SELECT 
    wkb_geometry AS geometrie, 
    CASE
        WHEN symbol = 101
            THEN 'Antiklinalachse'
        WHEN symbol = 102
            THEN 'Synklinalachse'
        WHEN symbol = 105
            THEN 'Ueberschiebung'
        WHEN symbol = 106
            THEN 'Ueberschiebung_vermutet' 
        WHEN symbol = 107
            THEN 'rheintalische_Verwerfung'
        WHEN symbol = 108
            THEN 'rheintalische_Verwerfung_vermutet'
        WHEN symbol = 109
            THEN 'Verwerfung'
        WHEN symbol = 110
            THEN 'Verwerfung_vermutet'
        WHEN symbol = 114
            THEN 'keine_Angabe_114'
         WHEN symbol = 115
            THEN 'keine_Angabe_115'          
    END AS typ
FROM 
    geologie.tekton
WHERE
    ST_Length(wkb_geometry) > 0
AND
    archive = 0
;
