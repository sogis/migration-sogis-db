SELECT
    stein.wkb_geometry AS geometrie, 
    stein.grid_code
FROM 
    aww_natgef_steins AS stein
WHERE 
    stein.archive = 0
;
