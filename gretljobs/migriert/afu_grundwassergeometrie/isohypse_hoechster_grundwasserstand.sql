SELECT
    wkb_geometry AS geometrie,
    CASE
        WHEN kurventyp = 1
            THEN 'm_1'
        WHEN kurventyp = 2
            THEN 'm_2'
                WHEN kurventyp = 10
            THEN 'm_10'
    END AS kurventyp,
    kote,
    bearbeiter,
    new_date AS erfassung
FROM
    public.aww_gshiso
WHERE
    archive = 0
;
