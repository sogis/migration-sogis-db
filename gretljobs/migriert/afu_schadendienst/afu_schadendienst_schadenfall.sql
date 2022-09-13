SELECT
    "schaden-nr" AS schaden_nr,
    jahr,
    "Sachbearbeiter" AS sachbearbeiter,
    datum,
    ort,
    "strasse/nr" AS strasse_nr,
    gewaesserschutzzone,
    code::int AS acode,
    ursache,
    "name" AS aname,
    adresse,
    ort2,
    telefon,
    art,
    menge,
    hergang,
    massnahmen,
    bemerkungen,
    schaden_id,
    wkb_geometry AS geometrie
FROM
    schadendienst.schadenfaelle_n
WHERE
    archive = 0
;
