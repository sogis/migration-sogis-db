SELECT
    untief.wkb_geometry AS geometrie, 
    untief.grid_code
FROM 
    aww_natgef_rutsch_untief AS untief
WHERE 
    untief.archive = 0
;
