SELECT
    CASE
        WHEN ST_GeometryType(wkb_geometry) <> 'ST_MultiPolygon'
            THEN ST_Multi(wkb_geometry)
        ELSE
            wkb_geometry
    END AS geometrie,
    id ,
    id_sw_db AS id_schutzwaldprojekt,
    schutzwald AS schutzwald_nr,
    flaeche_nr,
    abr_nr AS abrechnungs_nr,
    CASE
        WHEN massnahme = 'Bachräumung'
            THEN 'Bachraeumung'
        WHEN massnahme = 'Holzerei (Bodenseilzug)'
            THEN 'Holzerei_Bodenseilzug'
        WHEN massnahme = 'Holzerei (Bodenseilzug und Heli)'
            THEN 'Holzerei_Bodenseilzug_Heli'
        WHEN massnahme = 'Holzerei & Pflege'
            THEN 'Holzerei_Pflege'
        WHEN massnahme = 'Holzerei, Pflege und Infrastruktur'
            THEN 'Holzerei_Pflege_Infrastruktur'
        WHEN massnahme = 'Holzerei (Seilkran)'
            THEN 'Holzerei_Seilkran'
        WHEN massnahme = 'Holzerei und Pflanzung'
            THEN 'Holzerei_Pflanzung'
        WHEN massnahme = 'keine Massnahmen'
            THEN 'keine_Massnahmen'
        WHEN (massnahme = 'NaiS-konforme Pflege' OR massnahme = 'NaiS-Konforme Pflege')
            THEN 'NaiS_konforme_Pflege'
        WHEN massnahme = 'NaiS-konforme Pflege ohne Schutzwaldprojekt'
            THEN 'NaiS_konforme_Pflege_ohne_SW_projekt'
        WHEN massnahme = 'Pflanzung & Infrastruktur'
            THEN 'Pflanzung_Infrastruktur'
        WHEN massnahme = 'Pflanzung & Schlagräumung'
            THEN 'Pflanzung_Schlagraeumung'
        WHEN massnahme = 'Pflege und Pflanzung'
            THEN 'Pflege_Pflanzung'
        WHEN massnahme = 'Sturmschäden und Pflanzung'
            THEN 'Sturmschaeden_Pflanzung'
        ELSE massnahme
    END AS massnahme,
    CASE
        WHEN status_txt = 'ausgeführt und abgerechnet, NFA 2016-2019'
            THEN 'ausgefuehrt_abgerechnet_NFA_2016_2019'
        WHEN status_txt = 'ausgeführt und abgerechnet, NFA 2020-2025'
            THEN 'ausgefuehrt_abgerechnet_NFA_2020_2025'
        WHEN status_txt = 'ausgeführt und abgerechnet, NFA I'
            THEN 'ausgefuehrt_abgerechnet_NFA_I'
        WHEN status_txt = 'ausgeführt und abgerechnet, NFA II'
            THEN 'ausgefuehrt_abgerechnet_NFA_II'
        WHEN status_txt = 'ausgeführt und abgerechnet, NFA I&II'
            THEN 'ausgefuehrt_abgerechnet_NFA_I_II'
        WHEN status_txt = 'geplant' OR status_txt = 'ausgeführt und abgerechnet'
            THEN 'geplant'
        END AS astatus,
    CASE
        WHEN jahr = 9999
            THEN 2999
        ELSE jahr
    END AS jahr,
    area_gemes AS flaeche_gemessen,
    area_beitr AS flaeche_beitragsberechtigt,
    CASE
        WHEN bemerkung = ''
            THEN NULL
        ELSE bemerkung
    END AS bemerkung,
    CASE
        WHEN beschr = ''
            THEN NULL
        ELSE beschr
    END AS beschriftung
FROM
    awjf.sw_beh_flaeche
WHERE
    archive = 0
AND
    wkb_geometry IS NOT NULL
;
