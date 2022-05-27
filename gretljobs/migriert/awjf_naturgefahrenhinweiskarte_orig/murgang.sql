SELECT
    ST_GeometryN(murgang.wkb_geometry, 1) AS geometrie,
    murgang.grid_code
FROM 
    aww_natgef_murgang AS murgang
WHERE 
    murgang.archive = 0
;
