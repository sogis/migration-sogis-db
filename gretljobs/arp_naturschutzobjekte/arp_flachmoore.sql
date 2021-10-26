SELECT
    ST_GeometryN(wkb_geometry, 1) AS geometrie,
    fm_id AS flachmoor_id,
    nr_id AS nummer,
    bezeichung AS bezeichnung
FROM
    public.arp_flachmoor
WHERE
    archive = 0
;
