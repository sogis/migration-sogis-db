SELECT
    wkb_geometry AS geometrie,
    obj_name AS Objektname,
    NULL AS astatus,
    weigt AS waldeigentuemer,
    weigtnr AS gesuchnummer,
    flae_vb_ha AS flaeche_vereinbart,
    flae_gis_ha AS flaeche_eingezeichnet,
    hoe_ue_m AS hoehe,
    neigung_pr AS hangneigung,
    expostition AS exposition,
    natwges AS natuerliche_waldgesellschaft,
    CASE
        WHEN reservat = 0
            THEN false
        WHEN reservat = 1
            THEN true
    END AS reservat,
    entstehung,
    aufn_dat::date AS aufnahmedatum,
    name_vname AS aname,
    entwstaufn AS entwicklungsstadium,
    alter_aufn AS bestandesalter,
    jahr_0 AS jahr,
    bartenpraufn AS baumartenanteile,
    mischformaufn AS mischformaufnahme,
    schlgradaufn AS schlussgrad,
    schiaufn AS schichtung,
    hd_werte_auf AS hoehe_durchmesser_wert,
    bemerkung
FROM
    awjf_work.nullflaechen
;
