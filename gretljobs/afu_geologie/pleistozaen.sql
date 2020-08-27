SELECT 
    pleist.ogc_fid AS t_id, 
    pleist.wkb_geometry AS geometrie,     
    codes_system1.code_text_neu AS system1,
    codes_system2.code_text_neu AS system2, 
    codes_serie1.code_text_neu AS serie1,
    codes_serie2.code_text_neu AS serie2,     
    codes_formation1.code_text_neu AS formation1,
    codes_formation2.code_text_neu AS formation2, 
    codes_schichtgliederung.code_text_neu AS schichtgliederung,
    codes_ausbi_fest.code_text_neu AS ausbildung_festgestein, 
    codes_lithologie1.code_text_neu AS lithologie1,
    codes_lithologie2.code_text_neu AS lithologie2,
    codes_litho_fest.code_text_neu AS lithologie_festgestein,
    codes_sacku_fest.code_text_neu AS sackung_festgestein,
    codes_ausbi_lock.code_text_neu AS ausbildung_lockergestein,
    codes_litho_lock.code_text_neu AS lithologie_lockergestein,
    codes_verki_lock.code_text_neu AS verkittungsgrad_lockergestein,
    codes_durchlaess.code_text_neu AS wasserdurchlaessigkeit, 
    codes_gw_art.code_text_neu AS grundwasser_art,
    codes_gw_fuehrun.code_text_neu AS grundwasserfuehrung_maechtigkeit,
    codes_gespannt.code_text_neu AS grundwassertyp,
    codes_reib_winke.code_text_neu AS reibungswinkel_lockergestein,
    codes_kohaesion.code_text_neu AS kohaesion_lockergestein,
    codes_fels_reibe_.code_text_neu AS reibungswinkel_festgestein,
    codes_fels_kohae.code_text_neu AS kohaesion_festgestein,
    codes_mat_maecht.code_text_neu AS maechtigkeit_material,  
    codes_fehlmatmae.code_text_neu AS fehlendes_material_bis_naechster_layer
--    substr(pleist.neuer_code::text, 11, 1) AS gesteinstyp
FROM 
    geologie_migration.pleist
    LEFT JOIN geologie_migration.codes AS codes_system1
        ON 
            pleist.system1 = codes_system1.code_id
            AND 
            codes_system1.attribut_id = 1
    LEFT JOIN geologie_migration.codes AS codes_system2
        ON 
            pleist.system2 = codes_system2.code_id
            AND 
            codes_system2.attribut_id = 1
    LEFT JOIN geologie_migration.codes AS codes_serie1
        ON 
            pleist.serie1 = codes_serie1.code_id
            AND 
            codes_serie1.attribut_id = 2
    LEFT JOIN geologie_migration.codes AS codes_serie2
        ON 
            pleist.serie2 = codes_serie2.code_id
            AND 
            codes_serie2.attribut_id = 2
    LEFT JOIN geologie_migration.codes AS codes_formation1
        ON 
            pleist.formation1 = codes_formation1.code_id
            AND 
            codes_formation1.attribut_id = 3
    LEFT JOIN geologie_migration.codes AS codes_formation2
        ON 
            pleist.formation2 = codes_formation2.code_id
            AND 
            codes_formation2.attribut_id = 3
    LEFT JOIN geologie_migration.codes AS codes_schichtgliederung
        ON 
            substr(pleist.schichtgli::text, 1, 5) = codes_schichtgliederung.code_id
            AND 
            codes_schichtgliederung.attribut_id = 4
    LEFT JOIN geologie_migration.codes AS codes_ausbi_lock
        ON 
            pleist.ausbi_lock = codes_ausbi_lock.code_id
            AND
            codes_ausbi_lock.attribut_id = 10
            AND
            codes_ausbi_lock.gesteinstyp = '2'
    LEFT JOIN geologie_migration.codes AS codes_ausbi_fest
        ON 
            pleist.ausbi_fest = codes_ausbi_fest.code_id
            AND 
            codes_ausbi_fest.attribut_id = 10
            AND
            codes_ausbi_fest.gesteinstyp = '1'
    LEFT JOIN geologie_migration.codes AS codes_lithologie1
        ON 
            substr(pleist.neuer_code::text, 13, 2) = codes_lithologie1.code_id
            AND 
            codes_lithologie1.attribut_id = 11
            AND
            codes_lithologie1.gesteinstyp = '2'
     LEFT JOIN geologie_migration.codes AS codes_lithologie2
        ON 
            substr(pleist.neuer_code::text, 15, 2) = codes_lithologie2.code_id
            AND 
            codes_lithologie2.attribut_id = 12
            AND
            codes_lithologie2.gesteinstyp = '2'
    LEFT JOIN geologie_migration.codes AS codes_litho_lock
        ON 
            pleist.litho_lock = codes_litho_lock.code_id
            AND
            codes_litho_lock.attribut_id = 10
            AND
            codes_litho_lock.gesteinstyp = '2'
    LEFT JOIN geologie_migration.codes AS codes_litho_fest
        ON 
            pleist.litho_fest = codes_litho_fest.code_id
            AND
            codes_litho_fest.attribut_id = 10
            AND
            codes_litho_fest.gesteinstyp = '1'
    LEFT JOIN geologie_migration.codes AS codes_sacku_fest
        ON 
            pleist.sacku_fest = codes_sacku_fest.code_id
            AND 
            codes_sacku_fest.attribut_id = 13
            AND
            codes_sacku_fest.gesteinstyp = '1'
    LEFT JOIN geologie_migration.codes AS codes_verki_lock
        ON 
            pleist.verki_lock = codes_verki_lock.code_id
            AND
            codes_verki_lock.attribut_id = 13
            AND
            codes_verki_lock.gesteinstyp = '2'
    LEFT JOIN geologie_migration.codes AS codes_durchlaess
        ON 
            pleist.durchlaess = codes_durchlaess.code_id
            AND 
            codes_durchlaess.attribut_id = 14
    LEFT JOIN geologie_migration.codes AS codes_gw_art
        ON 
            pleist.gw_art = codes_gw_art.code_id
            AND 
            codes_gw_art.attribut_id = 15
    LEFT JOIN geologie_migration.codes AS codes_gw_fuehrun
        ON 
            pleist.gw_fuehrun = codes_gw_fuehrun.code_id
            AND 
            codes_gw_fuehrun.attribut_id = 16
    LEFT JOIN geologie_migration.codes AS codes_gespannt
        ON 
            pleist.gespannt = codes_gespannt.code_id
            AND 
            codes_gespannt.attribut_id = 17
    LEFT JOIN geologie_migration.codes AS codes_reib_winke
        ON 
            pleist.reib_winke = codes_reib_winke.code_id
            AND 
            codes_reib_winke.attribut_id = 18
    LEFT JOIN geologie_migration.codes AS codes_kohaesion
        ON 
            pleist.kohaesion = codes_kohaesion.code_id
            AND 
            codes_kohaesion.attribut_id = 19
    LEFT JOIN geologie_migration.codes AS codes_fels_reibe_
        ON 
            pleist.fels_reib_ = codes_fels_reibe_.code_id
            AND 
            codes_fels_reibe_.attribut_id = 20
    LEFT JOIN geologie_migration.codes AS codes_fels_kohae
        ON 
            pleist.fels_kohae = codes_fels_kohae.code_id
            AND 
            codes_fels_kohae.attribut_id = 21
    LEFT JOIN geologie_migration.codes AS codes_mat_maecht
        ON 
            pleist.mat_maecht = codes_mat_maecht.code_id
            AND 
            codes_mat_maecht.attribut_id = 22
    LEFT JOIN geologie_migration.codes AS codes_fehlmatmae
        ON 
            pleist.fehlmatmae= codes_fehlmatmae.code_id
            AND 
            codes_fehlmatmae.attribut_id = 23
WHERE 
    pleist.archive = 0
                                                               --and ogc_fid <> 1695  -- formation1 NULL
                                                               --and ogc_fid <> 1656  -- reibungswinkel NULL
                                                               --and ogc_fid <> 1660  -- system_2 NULL
;
