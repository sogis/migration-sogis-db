SELECT
    ST_GeometryN(wkb_geometry,generate_series(1, ST_NumGeometries(wkb_geometry))) AS geometrie,
    jahr,
    TRIM(BOTH FROM typ) AS typ_sperre,
    'Sperrgebiet' AS verwendungszweck,
    new_date AS datum_installation,
    CASE
        WHEN archive = 0
            THEN true
        WHEN archive = 1
            THEN false
    END AS aktiv,
    CASE
        WHEN archive_date < '9999-01-01'
            THEN archive_date
        WHEN archive_date = '9999-01-01'
            THEN '2999-01-01'
    END AS datum_inaktiv
FROM
    gelan.bienen_sperrgeb
;
