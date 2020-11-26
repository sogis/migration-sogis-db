SELECT
    wkb_geometry AS geometrie,
    symbol,
    date(bearbeitun::text) AS bearbeitung,
    bearbeiter
FROM
    public.aww_gshora
WHERE
    archive = 0
;
