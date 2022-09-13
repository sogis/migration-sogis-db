SELECT
    name AS aname,
    sostrid AS so_str_id,
    eid,
    fromnodeno AS von_knoten,
    tonodeno AS nach_knoten,
    dtv2040 AS dtv_gesamt,
    CASE
        WHEN dtv2040 <= 2000
            THEN '1 - 2000 Fahrzeuge'
        WHEN dtv2040 > 2000 and dtv2040 <= 4000
            THEN '2001 - 4000 Fahrzeuge'
        WHEN dtv2040 > 4000 and dtv2040 <= 6000
            THEN '4001 - 6000 Fahrzeuge'   
        WHEN dtv2040 > 6000 and dtv2040 <= 10000
            THEN '6001 - 10000 Fahrzeuge'
        WHEN dtv2040 > 10000 and dtv2040 <= 20000
            THEN '10001 - 20000 Fahrzeuge'
        WHEN dtv2040 > 20000 and dtv2040 <= 30000
            THEN '20001 - 30000 Fahrzeuge'
        WHEN dtv2040 > 30000 and dtv2040 <= 50000
            THEN '30001 - 50000 Fahrzeuge'
        WHEN dtv2040 > 50000
             THEN 'über 50000 Fahrzeuge'
    END AS dtv_kategorie,
    dtv2040_pw AS dtv_personenwagen,
    dtv2040_mr AS dtv_motorraeder,
    dtv2040_li AS dtv_lieferwagen,
    dtv2040_lkw AS dtv_lastwagen,
    dtv2040_lz AS dtv_lastzuege,
    asp2040 AS asp_gesamt,
    asp2040_pw AS asp_personenwagen,
    asp2040_mr AS asp_motorraeder,
    asp2040_li AS asp_lieferwagen,
    asp2040_lkw AS asp_lastwagen,
    asp2040_lz AS asp_lastzuege,
    dwv2040 AS dwv_gesamt,
    dwv2040_pw AS dwv_personenwagen,
    dwv2040_mr AS dwv_motorraeder,
    dwv2040_li AS dwv_lieferwagen,
    dwv2040_lkw AS dwv_lastwagen,
    dwv2040_lz AS dwv_lastzuege,
    neigung_be AS neigung_be,
    geschwindigkeit::int,
    laenge,
    kapazitaet,
    auslastung,
    typeno::int,
    wkb_geometry AS	geometrie
FROM
    avt_gesamtverkehrsmodell2015_pub.gvm_so_2015_prognose_2040
;
