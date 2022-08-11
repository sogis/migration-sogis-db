SELECT
    ogc_fid AS quelle_id,  /* da sonst keine Attribute vorhanden sind, wird die ogc_fid uebernommen */
    ST_GeometryN(wkb_geometry, generate_series(1, ST_NumGeometries(wkb_geometry))) AS geometrie
FROM
    public.aww_wpkart_priv
WHERE
    archive = 0
;
