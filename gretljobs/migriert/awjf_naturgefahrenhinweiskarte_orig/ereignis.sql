SELECT
    wkb_geometry AS geometrie,
    TO_DATE(datum, 'DD.MM.YYYY') AS datum,
    prozess_typ AS prozesstyp,
    storme_nr AS storme_nummer
FROM
    public.aww_natgef_ereignis
WHERE
    archive = 0
;
