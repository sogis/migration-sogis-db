SELECT 
    ST_GeometryN(talboden.wkb_geometry, 1) AS geometrie,
    talboden.grid_code
FROM 
    aww_natgef_talbod AS talboden
WHERE 
    talboden.archive = 0
;
