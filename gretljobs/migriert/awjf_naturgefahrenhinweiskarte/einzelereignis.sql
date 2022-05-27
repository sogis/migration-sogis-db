SELECT
    wkb_geometry AS geometrie,
    CASE
        WHEN datum <> ''
            THEN TO_DATE(datum, 'DD.MM.YYYY')
    END AS datum,
    CASE
        WHEN prozess_typ = 'W'
            THEN 'Wasser'
        WHEN prozess_typ = 'R'
            THEN 'Rutschung'
        WHEN prozess_typ = 'S'
            THEN 'Sturz'
        WHEN prozess_typ = 'L'
            THEN 'Lawine'   
    END AS  prozesstyp,
    trim(both from storme_nr) AS storme_nummer,
    jahr
FROM
    public.aww_natgef_ereignis
WHERE
    archive = 0
;
