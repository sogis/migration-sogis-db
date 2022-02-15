SELECT
    wkb_geometry AS geometrie,
    beschreibung
FROM
    awjf.wildbarriere_line
WHERE
    archive = 0
;
