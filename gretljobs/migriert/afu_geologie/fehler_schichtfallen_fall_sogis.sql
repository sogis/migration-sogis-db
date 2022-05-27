SELECT 
    ogc_fid AS t_id, 
    wkb_geometry AS geometrie, 
    fallrtg AS orientierung_einfall,
    fall AS winkelbetrag_einfall,
    CASE
        WHEN symbol::int = 101
            THEN 'vertikal_Schichtneigung_90'
        WHEN symbol::int = 102
            THEN 'horizontal_Orientierung_Einfall_nicht_messbar'
        WHEN symbol::int = 103
            THEN 'ueberkippt_Schichten_steiler_90_aufgerichtet'
        WHEN symbol::int = 104
            THEN 'geneigt_Schichtneigung_1_89'    
    END AS typ
FROM 
    geologie.sfall
WHERE
    archive = 0 and fall > 90
;
