SELECT
    wkb_geometry AS geometrie,
    schacht_id,
    kategorie,
    CASE
        WHEN status = 0
            THEN 'bestehend'
        WHEN status = 1
            THEN 'projektiert'
    END AS astatus,
    CASE
        WHEN gemeinde = 2498
            THEN 2499
        WHEN gemeinde IN (2423, 2429)
            THEN 2430
    ELSE
        gemeinde
    END AS gemeinde,
    teilgebiet,
    CASE
        WHEN qualitaet = 0
            THEN 'unbekannt'
        WHEN qualitaet = 1
            THEN 'SE_Ausf_Plan'
        WHEN qualitaet = 2
            THEN 'Uebersichtsplan'
        WHEN qualitaet = 3
            THEN 'SE_GEP_GKP'
        WHEN qualitaet = 4
            THEN 'Vermessung'
        WHEN qualitaet = 5
            THEN 'Melioration'
        WHEN qualitaet = 6
            THEN 'Projektplan'
        WHEN qualitaet = 7
            THEN 'Leitungskataster'
        WHEN qualitaet = 8
            THEN 'Orthofoto'
    END AS qualitaet,
    deckelhoeh AS deckelhoehe,
    ueberdecku AS ueberdeckung,
    to_date(bearbeitun ::text, 'YYYYMMDD') AS erfassung,
    erfasser,
    to_date(bearbeitun ::text, 'YYYYMMDD') AS bearbeitung,
    bearbeiter,
    eigentum,
    bemerkunge AS bemerkungen
FROM
    public.aww_seso_node
WHERE
    archive = 0
;
