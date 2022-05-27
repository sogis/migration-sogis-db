SELECT
    sir_nr AS sirenen_nr,
    id_nr AS id,
    so_sir_id AS so_sirenen_id,
    plz AS postleitzahl,
    gemeinde,
    politische_gemeinde,
    sir_stueck AS anzahl_sirenen,
    standortbezeichnung,
    standort_strasse,
    bedienungsstandort_schluesselschalter,
    sir_groesse AS sirenengroesse,
    dichte_faktor,
    kennwert_radius_1,
    kennwert_radius_1 * 2 AS kennwert_durchmesser_1,
    kennwert_radius_2,
    kennwert_radius_2 * 2 AS kennwert_durchmesser_2,
    winkel,
    sirenenbezeichnung,
    lieferant_service,
    baujahr,
    kkw_zone,
    informationen_bemerkungen,
    geometrie
FROM
    amb_sirenenplanung.sirenen
;
