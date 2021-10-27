SELECT
    ohb_code AS oberhoehenbonitaets_code,
    wkb_geometry AS geometrie
FROM
    awjf.oberhoehenbonitaet
WHERE
    archive = 0
;
