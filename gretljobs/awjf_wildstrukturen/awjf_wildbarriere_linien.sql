SELECT
    code AS acode,
    beschreibung,
    wkb_geometry AS geometrie
FROM
    awjf.wildbarriere_line
WHERE
    archive = 0
;
