SELECT
    wkb_geometry AS geometrie,
    obj_name AS objektname,
    status,
    weigt,
    weigtnr,
    gb_nr AS grundbuchnummer,
    xkoord AS x_koordinate,
    ykoord AS y_koordinate,
    flae_vb_ha,
    flae_gis_ha,
    hoe_ue_m,
    neigung_pr,
    expostition,
    natwges,
    reservat,
    entstehung,
    aufn_dat AS aufnahmedatum,
    name_vname AS aname,
    entwstaufn,
    alter_aufn,
    jahr_0,
    bartenpraufn,
    mischformaufn AS mischformaufnahme,
    schlgradaufn,
    schiaufn,
    hd_werte_auf,
    bemerkung
FROM
    awjf_work.nullflaechen
WHERE
    archive = 0
;
