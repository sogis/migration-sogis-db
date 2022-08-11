SELECT
    the_geom AS geometrie,
    CASE
        WHEN kb = 0
            THEN 'm_0'
        WHEN kb = 100
            THEN 'm_100'
        WHEN kb = 300
            THEN 'm_300'
    END AS konsultationsbereich,
    name AS aname
FROM
    sorkas.gasleitungen
WHERE
    name IN ('RSP Oberbuchsiten', 'RSP Etziken (12 Rohre)')
AND
    kb = 300
;
