SELECT
    wkb_geometry AS geometrie,
    beschreibung
FROM
    awjf.wildbarriere_poly
WHERE
    archive = 0
;
