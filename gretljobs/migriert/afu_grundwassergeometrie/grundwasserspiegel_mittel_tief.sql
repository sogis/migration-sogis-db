SELECT
    wkb_geometry AS geometrie,
    kote
FROM
    public.aww_gwspi
WHERE
    archive = 0
;
