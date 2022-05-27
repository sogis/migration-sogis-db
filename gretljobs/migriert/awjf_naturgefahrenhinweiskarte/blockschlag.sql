SELECT
    ST_GeometryN(block.wkb_geometry, 1) AS geometrie,
    99 AS acode
FROM 
    aww_natgef_block AS block
WHERE 
    block.archive = 0
;
