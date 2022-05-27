SELECT 
    ST_GeometryN(wkb_geometry,generate_series(1,ST_NumGeometries(wkb_geometry))) AS geometrie,
    talboden.grid_code AS acode
FROM 
    aww_natgef_talbod AS talboden
WHERE 
    talboden.archive = 0
;
