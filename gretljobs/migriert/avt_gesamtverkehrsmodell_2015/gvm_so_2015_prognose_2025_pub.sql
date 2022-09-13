SELECT
    name AS aname,
    sostrid AS so_str_id,
    eid,
    fromnodeno AS von_knoten,
    tonodeno AS nach_knoten,
    dtv2025 AS dtv_gesamt,
    CASE
        WHEN dtv2025 <= 2000
            THEN '1 - 2000 Fahrzeuge'
        WHEN dtv2025 > 2000 and dtv2025 <= 4000
            THEN '2001 - 4000 Fahrzeuge'
        WHEN dtv2025 > 4000 and dtv2025 <= 6000
            THEN '4001 - 6000 Fahrzeuge'   
        WHEN dtv2025 > 6000 and dtv2025 <= 10000
            THEN '6001 - 10000 Fahrzeuge'
        WHEN dtv2025 > 10000 and dtv2025 <= 20000
            THEN '10001 - 20000 Fahrzeuge'
        WHEN dtv2025 > 20000 and dtv2025 <= 30000
            THEN '20001 - 30000 Fahrzeuge'
        WHEN dtv2025 > 30000 and dtv2025 <= 50000
            THEN '30001 - 50000 Fahrzeuge'
        WHEN dtv2025 > 50000
             THEN 'über 50000 Fahrzeuge'
    END AS dtv_kategorie,
    dtv2025_pw AS dtv_personenwagen,
    dtv2025_mr AS dtv_motorraeder,
    dtv2025_li AS dtv_lieferwagen,
    dtv2025_lkw AS dtv_lastwagen,
    dtv2025_lz AS dtv_lastzuege,
    neigung_be AS neigung_be,
    geschwindigkeit::int,
    laenge,
    kapazitaet,
    auslastung,
    typeno::int,
    wkb_geometry AS	geometrie
FROM
    avt_gesamtverkehrsmodell2015_pub.gvm_so_2015_prognose_2025
;
