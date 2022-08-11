SELECT
    CASE
        WHEN typ = 1
            THEN 'Bus'
        WHEN (typ = 2 OR typ = 3)
            THEN 'Bahn'
    END AS verkehrsmittel,
    FALSE AS tunnel,
    ST_Multi(wkb_geometry) AS geometrie
FROM
    public.avt_oev_netz
WHERE
    archive = 0
AND
    wkb_geometry IS NOT NULL
;
