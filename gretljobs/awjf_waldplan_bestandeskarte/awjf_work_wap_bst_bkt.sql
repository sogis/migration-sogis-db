SELECT
    CASE
        WHEN ST_GeometryType(wkb_geometry) = 'ST_MultiPolygon'
            THEN ST_GeometryN(wkb_geometry, generate_series(1, ST_NumGeometries(wkb_geometry)))
        ELSE
            wkb_geometry
    END AS geometrie,
    id_wp,
    fid_amtei,
    fid_fk,
    fid_fr,
    wirt_zone,
    gem_bfs,
    fid_we,
    gb_flaeche,
    we_text,
    fid_eigcod,
    fid_eig,
    fid_prod,
    wpnr,
    wptyp,
    betriebsteil,
    fid_abt,
    bstnr,
    bsttyp,
    CASE
        WHEN wpinfo = ''
            THEN NULL
        ELSE
           wpinfo
    END AS wpinfo,
    bemerkung,
    flae_gis,
    zeitstand,
    beschrift,
    x_beschr,
    y_beschr,
    objnummer,
    'Review' AS astatus
FROM
    awjf_work.wap_bst_bkt
;
