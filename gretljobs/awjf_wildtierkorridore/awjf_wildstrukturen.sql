SELECT
    wkb_geometry AS geometrie,
    beschreibung
FROM
    awjf.wildstrukturen
WHERE
    archive = 0
;
