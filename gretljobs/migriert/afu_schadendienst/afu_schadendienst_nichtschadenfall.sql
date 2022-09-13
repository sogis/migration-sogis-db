SELECT
    "Nichtschaden-ID" AS nichtschaden_id,
    "Kontaktperson_AfU" AS kontaktperson_afu,
    "Datum" AS datum,
    "Ort" AS ort,
    "Strasse_Nr" AS strasse_nr,
    "Kurzbeschrieb" AS kurzbeschrieb,
    "Bemerkungen" AS bemerkungen,
    wkb_geometry AS geometrie
FROM
    schadendienst.nichtschadenfaelle
;
