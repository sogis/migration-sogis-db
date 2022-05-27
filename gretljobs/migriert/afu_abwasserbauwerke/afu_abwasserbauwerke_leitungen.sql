SELECT
    wkb_geometry AS geometrie,
    length AS laenge,
    seso_id,
    durchmesse AS durchmesser,
    gefaelle,
    kategorie,
    druckleitu AS druckleitung,
    status AS astatus,
    von_hoehe,
    zu_hoehe,
    CASE
        WHEN baujahr >= 1900
            THEN baujahr
        ELSE
            NULL
    END AS baujahr,
    material,
    CASE
        WHEN gemeinde = 2498
            THEN 2499
        WHEN gemeinde IN (2423, 2429)
            THEN 2430
    ELSE
        gemeinde
    END AS gemeinde,
    teilgebiet,
    qualitaet,
    archiv_nr,
    to_date(bearbeitun::text, 'YYYYMMDD')::date AS erfassung,
    erfasser,
    to_date(bearbeitun::text, 'YYYYMMDD')::date AS bearbeitung,
    bearbeiter,
    ofg_connec AS ofg_connection,
    selekt,
    neg_imp,
    symbol,
    put_erfolg,
    eigentum,
    bemerkunge AS bemerkungen,
    ara_join
FROM
    public.aww_seso
WHERE
    archive = 0
AND
   ST_IsValid(wkb_geometry)
;
