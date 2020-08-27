SELECT 
    ogc_fid AS t_id, 
    wkb_geometry AS geometrie, 
    fallrtg AS orientierung_einfall,
    fall AS winkelbetrag_einfall,
    CASE
        WHEN symbol::int = 101
            THEN 'geneigt_Schichtneigung_1_89'
        WHEN symbol::int = 102
            THEN 'ueberkippt_Schichten_steiler_90_aufgerichtet'
        WHEN symbol::int = 103
            THEN 'horizontal_Orientierung_Einfall_nicht_messbar'
        WHEN symbol::int = 104
            THEN 'vertikal_Schichtneigung_90'    
    END AS typ
FROM 
    geologie.sfall
WHERE
    archive = 0
                                                                                and ogc_fid not in (8050,7481,5980,4980)
;
        
                 
