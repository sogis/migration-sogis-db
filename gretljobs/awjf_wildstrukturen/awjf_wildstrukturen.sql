SELECT
    beschreibung,
    wkb_geometry AS geometrie
FROM
    awjf.wildstrukturen
WHERE
    archive = 0
;
