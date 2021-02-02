SELECT
    ogc_fid AS t_id,            /* da sonst keine Attribute vorhanden sind, wird ogc_fid uebernommen */
    ST_GeometryN(wkb_geometry, generate_series(1, ST_NumGeometries(wkb_geometry))) AS geometrie
FROM
    public.aww_wpkart_priv
WHERE
    archive = 0
;
