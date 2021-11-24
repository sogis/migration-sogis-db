SELECT 
    ogc_fid AS t_id,
    wkb_geometry AS geometrie,
    round(area::NUMERIC,2) AS area,
    massstab,
    autor,
    kartierung,
    ges_alt AS standorteinheit_kartierung,
    ges_neu AS standorteinheit_korrigiert,
    ges_neu_ber AS standorteinheit_bereinigt,
    NULL AS standorteinheit_nais,
    bezirk,
    wald,
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
