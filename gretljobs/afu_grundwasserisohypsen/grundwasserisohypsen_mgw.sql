SELECT
    ST_LineMerge(wkb_geometry) AS geometrie,
    CASE
        WHEN kurventyp = 1
            THEN 'ein_Meter'
        WHEN kurventyp = 2
            THEN 'zwei_Meter'
                WHEN kurventyp = 10
            THEN 'zehn_Meter'
    END AS kurventyp,
    kote,
    NULL AS bearbeiter,
    new_date AS erfassung
FROM
    public.aww_gsmiso
WHERE
    archive = 0
;
