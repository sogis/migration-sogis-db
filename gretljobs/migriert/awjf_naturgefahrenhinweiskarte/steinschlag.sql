SELECT
    stein.wkb_geometry AS geometrie, 
    stein.grid_code AS acode
FROM 
    aww_natgef_steins AS stein
WHERE 
    stein.archive = 0
;
