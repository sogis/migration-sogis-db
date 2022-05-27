SELECT
    ST_GeometryN(wkb_geometry, generate_series(1, ST_NumGeometries(wkb_geometry))) AS geometrie,
--     wkb_geometry AS geometrie,
    CASE
        WHEN colorid = 0
            THEN 'Abfrage_moeglich'
        ELSE 'Abfrage_nicht_moeglich'
    END AS abfrage
FROM
    auszug_akt_altlasten17785.abfrageperimeter_kanton
;
