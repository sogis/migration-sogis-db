SELECT
    the_geom AS geometrie,
    CASE
        WHEN konsultati = '0m'
            THEN 'm_0'
        WHEN konsultati = '100m'
            THEN 'm_100'
    END AS konsultationsbereich,
    text AS betriebsname
FROM
    sorkas.betriebe
;
