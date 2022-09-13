SELECT
    the_geom AS geometrie,
    baseid AS base_id,
    cko_owner AS eigentuemer,
    CASE
        WHEN tunnel = 0
            THEN false
        WHEN tunnel = 1
            THEN true
    END AS tunnel,
    CASE
        WHEN kb = 0
            THEN 'm_0'
        WHEN kb = 100
            THEN 'm_100'
    END AS konsultationsbereich
FROM
    sorkas.natstr
;
