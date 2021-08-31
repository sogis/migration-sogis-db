SELECT
    wkb_geometry AS geometrie,
    grid_code
FROM
    public.aww_miflu
WHERE
    archive = 0
;
