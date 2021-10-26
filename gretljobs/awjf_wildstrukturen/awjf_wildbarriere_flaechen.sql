SELECT
    code AS acode,
    beschreibung,
    wkb_geometry AS geometrie
FROM
    awjf.wildbarriere_poly
WHERE
    archive = 0
;
