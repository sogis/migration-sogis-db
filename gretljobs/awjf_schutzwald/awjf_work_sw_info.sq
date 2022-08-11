SELECT 
    wkb_geometry AS geometrie,
    round(area::NUMERIC,2) AS area,
    massstab,
        CASE
        WHEN autor = 'A'
            THEN 'BGU'
        WHEN autor = 'B'
            THEN 'Kaufmann'
        WHEN autor = 'C'
            THEN 'Froehlicher'
        WHEN autor = 'D'
            THEN 'Borer'
        WHEN autor = 'W'
            THEN 'Waldmaske'
    END AS autor,
    kartierung,
    ges_alt AS standorteinheit_kartierung,
    ges_neu AS standorteinheit_korrigiert,
    ges_neu_ber AS standorteinheit_bereinigt,
    NULL AS standorteinheit_nais,
    CASE
        WHEN bezirk = 0
            THEN NULL
        WHEN bezirk = 1
            THEN 'Gaeu'
        WHEN bezirk = 2
            THEN 'Thal'
        WHEN bezirk = 3
            THEN 'Bucheggberg'
        WHEN bezirk = 4
            THEN 'Dorneck'
        WHEN bezirk = 5
            THEN 'Goesgen'
        WHEN bezirk = 6
            THEN 'Wasseramt'
        WHEN bezirk = 7
            THEN 'Lebern'
        WHEN bezirk = 8
            THEN 'Olten'
        WHEN bezirk = 9
            THEN 'Solothurn'
        WHEN bezirk = 10
            THEN 'Thierstein'
    END AS bezirk,
    CASE
        WHEN wald = 0
            THEN 'Nein'
        WHEN wald = 1
            THEN 'Ja'
    END AS wald,
    grundeinheit,
    legende,
    farbcode,
    verband,
    ertragsklasse,
    zuwachs,
    min_lbh_ant AS minimaler_laubholzanteil
FROM 
    awjf.waldge
WHERE 
    archive = 0
;
