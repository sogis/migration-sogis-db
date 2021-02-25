SELECT
    haltestell AS haltestellenname,
    didok,
    CASE
        WHEN verkehrsmittel = 1
            THEN 'Bus'
        WHEN (verkehrsmittel = 2 OR verkehrsmittel = 3)
            THEN 'Bahn'
    END AS verkehrsmittel,
    'keine' AS kategorie,
    wkb_geometry AS geometrie
FROM
    public.avt_oev_haltestellen
WHERE
    archive = 0
;
