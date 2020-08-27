SELECT 
    ogc_fid AS t_id, 
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
--        and ogc_fid not in (7490,7336,7348,7355,7337,7339,7340,7344,7345,7349,7388,7389,7390,7371,7347,7439,7440,7431,7434,7346,7489,7495,7496,7497,7498,7534,7535,7536,7692,7819,7820,7829,7872,7946,8715)
;
        
                 
