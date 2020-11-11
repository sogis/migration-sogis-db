SELECT
    geometrie,
    CASE
        WHEN kurventyp = 'ein_Meter'
            THEN 1
        WHEN kurventyp = 'zwei_Meter'
            THEN 2
        WHEN kurventyp = 'zehn_Meter'
            THEN 10
    END AS kurventyp,
    kote,
    bearbeiter,
    erfassung
FROM
    afu_grundwasserisohypsen.grundwassrshypsen_hoechster_grundwasserstand
;
