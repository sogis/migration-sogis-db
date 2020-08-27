SELECT 
    sirenen_nr AS sirenen_nr, 
    id AS id, 
    so_sirenen_id AS so_sirenen_id, 
    (SELECT
        plz
    FROM
        agi_plz_ortschaften_pub.plzortschaften_postleitzahl AS postleitzahl
    WHERE
        ST_WITHIN(sirenenplanung_sirenen.geometrie, postleitzahl.geometrie)) AS postleitzahl,
    (SELECT
        ortschaftsname
    FROM
        agi_plz_ortschaften_pub.plzortschaften_ortschaft AS ortschaft
    WHERE
        ST_WITHIN(sirenenplanung_sirenen.geometrie, ortschaft.geometrie)) AS gemeinde, 
    (SELECT
        gemeindename
    FROM
        agi_hoheitsgrenzen_pub.hoheitsgrenzen_gemeindegrenze AS gemeinde
    WHERE
        ST_WITHIN(sirenenplanung_sirenen.geometrie, gemeinde.geometrie)) AS politische_gemeinde, 
    anzahl_sirenen, 
    ostwert, 
    nordwert, 
    standortbezeichnung,
    standort_strasse,
    bedienungsstandort_schluesselschalter,
    sirenengroesse, 
    dichte_faktor,
    kennwert_radius_1,
    kennwert_durchmesser_1, 
    kennwert_radius_2,
    kennwert_durchmesser_2, 
    winkel,
    sirenenbezeichnung,
    lieferant_service,
    baujahr,
    kkw_zone,
    informationen_bemerkungen,
    geometrie
FROM 
    amb_sirenenplanung.sirenenplanung_sirenen
;
