SELECT
    wkb_geometry AS geometrie,
    id,
    id_sw_db,
    schutzwald,
    flaeche_nr,
    abr_nr,
    massnahme,
    status,
    jahr,
    area_gemes AS flaeche_gemessen,
    area_beitr AS flaeche_beitragsberechtigt,
    bemerkung,
    bem_db,
    beschr AS beschriftung,
    x_beschr,
    y_beschr
FROM
    awjf.sw_beh_flaeche
WHERE
    archive = 0
;
