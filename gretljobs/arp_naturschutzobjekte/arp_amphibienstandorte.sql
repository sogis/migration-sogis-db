SELECT
    wkb_geometry AS geometrie,
    objekt,
    stand,
    bauherr
FROM
    naturschutz.amphibienstandorte
WHERE
    archive = 0
;
