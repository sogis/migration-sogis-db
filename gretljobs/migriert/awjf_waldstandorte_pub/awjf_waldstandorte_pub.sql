SELECT 
    geometrie,
    round(area::NUMERIC/10000,2) AS area,
    CASE
        WHEN massstab = 1
            THEN '< 1:2500'
        WHEN massstab = 2
            THEN '1:2500'
        WHEN massstab = 3
            THEN '1:5000'
        WHEN massstab = 4
            THEN '1:10000'
        WHEN massstab = 5
            THEN '1:25000'
        WHEN massstab = 6
            THEN '1:50000'
    END AS massstab,
    autor,
    kartierung,
    standorteinheit_kartierung,
    standorteinheit_korrigiert,
    standorteinheit_bereinigt,
    standorteinheit_nais,
    bezirk,
    wald,
    grundeinheit,
    legende,
    CASE
        WHEN (grundeinheit IS NULL OR legende IS NULL)
            THEN NULL
        ELSE
            concat_ws(' ', grundeinheit, legende)
    END AS waldstandort,
    farbcode,
    verband,
    CASE
        WHEN ertragsklasse = 1
            THEN 'Ertragsklasse I, Zuwachs jährlich (10-13-15) m3 pro ha'
        WHEN ertragsklasse = 2
            THEN 'Ertragsklasse II, Zuwachs jährlich (8-10-12) m3 pro ha'
        WHEN ertragsklasse = 3
            THEN 'Ertragsklasse III, Zuwachs jährlich (7-8-9) m3 pro ha'
        WHEN ertragsklasse = 4
            THEN 'Ertragsklasse IV, Zuwachs jährlich (5-6-7) m3 pro ha'
        WHEN ertragsklasse = 5
            THEN 'Ertragsklasse V, Zuwachs jährlich (3-4-5) m3 pro ha'
        WHEN ertragsklasse = 6
            THEN 'Ertragsklasse VI, Zuwachs jährlich (1-2-3) m3 pro ha'
    END AS ertragsklasse,
    zuwachs,
    minimaler_laubholzanteil * 100 AS minimaler_laubholzanteil
FROM 
    awjf_waldstandorte_v1.waldstandort
;
