SELECT
    ST_GeometryN(ueberflutung.wkb_geometry, 1) AS geometrie, 
    ueberflutung.grid_code
FROM 
    aww_natgef_ubflut AS ueberflutung
WHERE
    ueberflutung.archive = 0
;
