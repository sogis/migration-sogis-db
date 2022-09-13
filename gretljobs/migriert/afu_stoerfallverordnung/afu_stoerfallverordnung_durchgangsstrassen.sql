SELECT
    ST_GeometryN(the_geom, generate_series(1, ST_NumGeometries(the_geom))) AS geometrie,
    achseid AS achse_id,
    achsname AS achsenname,
    achsnummer::int AS achsennummer,
    achstyp AS achsentyp,
    CASE
        WHEN durchg = '0'
            THEN 'nicht_dargestellt'
        WHEN durchg = '1'
            THEN 'ausgezogene_Linie'
        WHEN durchg = '2'
            THEN 'gestrichelte_Linie'
    END AS darstellung,
    'm_0' AS konsultationsbereich
FROM
    sorkas.durchgangsstrassen
WHERE
    archive = 0
;
