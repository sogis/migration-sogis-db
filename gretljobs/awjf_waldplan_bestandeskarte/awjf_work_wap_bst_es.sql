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
    CASE
        WHEN fid_abt = ''
            THEN NULL
        ELSE
           fid_abt
    END AS fid_abt,
    bstnr,
    CASE
        WHEN bsttyp < -2000000
            THEN 1000
        ELSE
           bsttyp
    END AS bsttyp,
    CASE
        WHEN wpinfo = ''
            THEN NULL
        ELSE
           wpinfo
    END AS wpinfo,
    CASE
        WHEN bemerkung = ''
            THEN NULL
        ELSE
           bemerkung
    END AS bemerkung,
    flae_gis,
    zeitstand,
    CASE
        WHEN beschrift = ''
            THEN NULL
        ELSE
           beschrift
    END AS beschrift,
    x_beschr,
    y_beschr,
    CASE
        WHEN objnummer = ''
            THEN NULL
        ELSE
           objnummer
    END AS objnummer,
    CASE
        WHEN id_wp = 0
            THEN 'in_Bearbeitung'
        ELSE
            'abgeschlossen'
    END AS astatus
FROM
    awjf_work.wap_bst_es
WHERE
     id_wp <> 119248            /*ungültige Geometrie*/
;
