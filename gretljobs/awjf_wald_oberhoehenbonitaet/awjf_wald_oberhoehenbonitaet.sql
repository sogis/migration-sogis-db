SELECT
    CASE
        WHEN ohb_code = 10
            THEN 'm_kleiner_gleich_10'
        WHEN ohb_code = 14
            THEN 'm_11_bis_14'
        WHEN ohb_code = 18
            THEN 'm_15_bis_18'
        WHEN ohb_code = 22
            THEN 'm_19_bis_22'
        WHEN ohb_code = 26
            THEN 'm_23_bis_26'
        WHEN ohb_code = 30
            THEN 'm_27_bis_30'
        WHEN ohb_code = 100
            THEN 'm_groesser_30'
    END AS oberhoehenbonitaets_code,
    wkb_geometry AS geometrie
FROM
    awjf.oberhoehenbonitaet
WHERE
    archive = 0
;
