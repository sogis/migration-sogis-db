SELECT
    ST_GeometryN(wkb_geometry, generate_series(1, ST_NumGeometries(wkb_geometry))) AS geometrie,
    CASE
        WHEN maechtigke = '2-10m'
            THEN 'm_2_10'
        WHEN maechtigke = '10-20m'
            THEN 'm_10_20'
        WHEN maechtigke = '20-30m'
            THEN 'm_20_30'
        WHEN maechtigke = '30-40m'
            THEN 'm_30_40'
        WHEN maechtigke = '40-50m'
            THEN 'm_40_50'
        WHEN maechtigke = '>50m' OR maechtigke = '> 50m'
            THEN 'm_groesser_50'
    END AS maechtigkeit_m
FROM
    public.aww_gwomac
WHERE
    archive = 0
;
