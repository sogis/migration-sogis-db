SELECT
    wkb_geometry AS geometrie,
    karch_id,
    nr AS nummer,
    obname AS objektname,
    CASE
        WHEN ianb = 'JA'
            THEN 'Ja'
        WHEN ianb = 'NEIN'
            THEN 'Nein'
    END AS ianb
FROM
    naturschutz.karch_objekte
;
