SELECT
    ST_GeometryN(wkb_geometry, 1) AS geometrie,
    tooltip AS bezeichnung,
    hkfcd AS herkunft_code
FROM
    gelan.alw_temp
;
