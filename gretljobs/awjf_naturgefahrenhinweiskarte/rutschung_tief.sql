SELECT 
    tief.wkb_geometry AS geometrie, 
    tief.grid_code AS acode
FROM 
    aww_natgef_rutsch_tief AS tief
WHERE 
    tief.archive = 0
;
