SELECT
    bekannte_rutschung.wkb_geometry AS geometrie, 
    bekannte_rutschung.grid_code AS acode
FROM 
    aww_natgef_rutsch_bek AS bekannte_rutschung
WHERE 
    bekannte_rutschung.archive = 0
;
