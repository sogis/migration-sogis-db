SELECT
    ST_GeometryN(uebersarung.wkb_geometry, 1) AS geometrie,
    uebersarung.grid_code
FROM 
    aww_natgef_ubsar AS uebersarung
WHERE 
    uebersarung.archive = 0
;
