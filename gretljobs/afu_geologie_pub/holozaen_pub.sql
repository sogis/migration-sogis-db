SELECT 
    ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001))) AS geometrie,
    system1,
    system2,
    serie1,
    serie2,
    formation1,
    formation2,
    schichtgliederung,
    ausbildung_festgestein,
    lithologie_festgestein,
    sackung_festgestein,
    ausbildung_lockergestein,
    lithologie_lockergestein,
    lithologie1,
    lithologie2,
    verkittungsgrad_lockergestein,
    wasserdurchlaessigkeit,
    grundwasser_art,
    grundwasserfuehrung_maechtigkeit,
    grundwassertyp,
    reibungswinkel_lockergestein,
    kohaesion_lockergestein,
    reibungswinkel_festgestein,
    kohaesion_festgestein,
    maechtigkeit_material,
    fehlendes_material_bis_naechster_layer
FROM 
    afu_geologie_v1.geologie_holozaen AS holozaen
    LEFT JOIN afu_geologie_v1.geologisches_system AS system1_code
    ON system1 = system1_code.ilicode
    LEFT JOIN afu_geologie_v1.geologisches_system AS system2_code
    ON system2 = system2_code.ilicode
    LEFT JOIN afu_geologie_v1.geologische_serie AS serie1_code
    ON serie1 = serie1_code.ilicode
    LEFT JOIN afu_geologie_v1.geologische_serie AS serie2_code
    ON serie2 = serie2_code.ilicode
    LEFT JOIN afu_geologie_v1.geologische_formation AS formation1_code
    ON formation1 = formation1_code.ilicode
    LEFT JOIN afu_geologie_v1.geologische_formation AS formation2_code
    ON formation2 = formation2_code.ilicode
    LEFT JOIN afu_geologie_v1.geologische_schichtgliederung AS schichtgliederung_code
    ON schichtgliederung = schichtgliederung_code.ilicode
    LEFT JOIN afu_geologie_v1.ausbildung_festgestein AS ausbildung_festgestein_code
    ON ausbildung_festgestein = ausbildung_festgestein_code.ilicode
    LEFT JOIN afu_geologie_v1.lithologie AS lithologie_festgestein_code
    ON lithologie_festgestein = lithologie_festgestein_code.ilicode
    LEFT JOIN afu_geologie_v1.ausbildung_lockergestein AS ausbildung_lockergestein_code
    ON ausbildung_lockergestein = ausbildung_lockergestein_code.ilicode
    LEFT JOIN afu_geologie_v1.lithologie AS lithologie_code
    ON lithologie_lockergestein = lithologie_code.ilicode
    LEFT JOIN afu_geologie_v1.geologie_geologische_schicht_sackung_festgestein AS sackung_festgestein_code
    ON sackung_festgestein = sackung_festgestein_code.ilicode
    LEFT JOIN afu_geologie_v1.lithologie AS lithologie1_code
    ON lithologie1 = lithologie1_code.ilicode
    LEFT JOIN afu_geologie_v1.lithologie AS lithologie2_code
    ON lithologie2 = lithologie2_code.ilicode
    LEFT JOIN afu_geologie_v1.geologie_geologische_schicht_verkittungsgrad_lockergestein AS verkittungsgrad_lockergestein_code
    ON verkittungsgrad_lockergestein = verkittungsgrad_lockergestein_code.ilicode
    LEFT JOIN afu_geologie_v1.wasserdurchlaessigkeit AS wasserdurchlaessigkeit_code
    ON wasserdurchlaessigkeit = wasserdurchlaessigkeit_code.ilicode
    LEFT JOIN afu_geologie_v1.geologie_geologische_schicht_grundwasser_art AS grundwasser_art_code
    ON grundwasser_art = grundwasser_art_code.ilicode
    LEFT JOIN afu_geologie_v1.grundwasserfuehrung_maechtigkeit AS grundwasserfuehrung_maechtigkeit_code
    ON grundwasserfuehrung_maechtigkeit = grundwasserfuehrung_maechtigkeit_code.ilicode
    LEFT JOIN afu_geologie_v1.grundwassertyp AS grundwassertyp_code
    ON grundwassertyp = grundwassertyp_code.ilicode    
    LEFT JOIN afu_geologie_v1.reibungswinkel AS reibungswinkel_lockergestein_code
    ON reibungswinkel_lockergestein = reibungswinkel_lockergestein_code.ilicode    
    LEFT JOIN afu_geologie_v1.kohaesion AS kohaesion_lockergestein_code
    ON kohaesion_lockergestein = kohaesion_lockergestein_code.ilicode
    LEFT JOIN afu_geologie_v1.reibungswinkel AS reibungswinkel_festgestein_code
    ON reibungswinkel_festgestein = reibungswinkel_festgestein_code.ilicode
    LEFT JOIN afu_geologie_v1.kohaesion AS kohaesion_festgestein_code
    ON kohaesion_festgestein = kohaesion_festgestein_code.ilicode
    LEFT JOIN afu_geologie_v1.material AS maechtigkeit_material_code
    ON maechtigkeit_material = maechtigkeit_material_code.ilicode
    LEFT JOIN afu_geologie_v1.material AS fehlendes_material_bis_naechster_layer_code
    ON fehlendes_material_bis_naechster_layer = fehlendes_material_bis_naechster_layer_code.ilicode
;
