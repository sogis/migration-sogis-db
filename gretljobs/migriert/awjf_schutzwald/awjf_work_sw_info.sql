SELECT
    CASE
        WHEN ST_Geometrytype(wkb_geometry) = 'ST_MultiPolygon'
            THEN ST_GeometryN(wkb_geometry, generate_series(1, ST_NumGeometries(wkb_geometry)))
        ELSE wkb_geometry
    END AS geometrie,
    id_wp AS waldplan_id,
    gem_bfs AS gemeindenummer,
    fid_we AS eigentuemer_id,
    we_text AS eigentuemer_text,
    fid_eigcod AS eigentuemer_nr,
    wpnr AS waldplannummer,
    wptyp AS waldplantyp,
    betriebsteil,
    wpinfo AS waldplan_info,
    CASE
        WHEN bemerkung = ''
            THEN NULL
        ELSE bemerkung
    END AS bemerkung,
    id_sw_info AS id_schutzwaldinfo,
    sw_name AS schutzwald_nr,
    CASE 
        WHEN z_typ = 1 
            THEN 'Sturz_Entstehungsgebiet'
        WHEN z_typ = 2
            THEN 'Sturz_Transitgebiet'
        WHEN z_typ = 3 
            THEN 'Sturz_Ablagerungsgebiet'
        WHEN z_typ = 4 
            THEN 'Rutschung_Entstehungsgebiet'
        WHEN z_typ = 5 
            THEN 'Rutschung_Reserve'
        WHEN z_typ = 6
            THEN 'Wald_in_Gerinnehaengen'
    END AS Zieltyp,
    CASE
        WHEN nais_code = 10
            THEN 'Handlungsbedarf_ohne_Ansprache'
        WHEN nais_code = 11
            THEN 'Handlungsbedarf_Dringlichkeit_klein'
        WHEN nais_code = 12
            THEN 'Handlungsbedarf_Dringlichkeit_mittel'
        WHEN nais_code = 13
            THEN 'Handlungsbedarf_Dringlichkeit_gross'
        WHEN nais_code = 20
            THEN 'kein_Handlungsbedarf'
        WHEN nais_code = 99
            THEN 'keine_Ansprache'
    END AS nais_code,
    sw_info_fl AS flaeche,
    zeitstand::date AS zeitstand,
    beh_einheit AS behandlungseinheit
FROM
    awjf_work.sw_info
WHERE
    archive = 0
;
