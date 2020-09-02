SELECT 
    holoz.wkb_geometry AS geometrie,     
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
FROM 
    geologie_migration.holoz
    LEFT JOIN geologie_migration.codes AS codes_system1
        ON 
            holoz.system1 = codes_system1.code_id
            AND 
            codes_system1.attribut_id = 1
    LEFT JOIN geologie_migration.codes AS codes_system2
        ON 
            holoz.system2 = codes_system2.code_id
            AND 
            codes_system2.attribut_id = 1
    LEFT JOIN geologie_migration.codes AS codes_serie1
        ON 
            holoz.serie1 = codes_serie1.code_id
            AND 
            codes_serie1.attribut_id = 2
    LEFT JOIN geologie_migration.codes AS codes_serie2
        ON 
            holoz.serie2 = codes_serie2.code_id
            AND 
            codes_serie2.attribut_id = 2
    LEFT JOIN geologie_migration.codes AS codes_formation1
        ON 
            holoz.formation1 = codes_formation1.code_id
            AND 
            codes_formation1.attribut_id = 3
    LEFT JOIN geologie_migration.codes AS codes_formation2
        ON 
            holoz.formation2 = codes_formation2.code_id
            AND 
            codes_formation2.attribut_id = 3
    LEFT JOIN geologie_migration.codes AS codes_schichtgliederung
        ON 
            substr(holoz.schichtgli::text, 1, 5) = codes_schichtgliederung.code_id
            AND 
            codes_schichtgliederung.attribut_id = 4
    LEFT JOIN geologie_migration.codes AS codes_ausbi_lock
        ON 
            holoz.ausbi_lock = codes_ausbi_lock.code_id
            AND
            codes_ausbi_lock.attribut_id = 10
            AND
            codes_ausbi_lock.gesteinstyp = '2'
    LEFT JOIN geologie_migration.codes AS codes_ausbi_fest
        ON 
            holoz.ausbi_fest = codes_ausbi_fest.code_id
            AND 
            codes_ausbi_fest.attribut_id = 10
            AND
            codes_ausbi_fest.gesteinstyp = '1'
    LEFT JOIN geologie_migration.codes AS codes_lithologie1
        ON 
            substr(holoz.neuer_code::text, 13, 2) = codes_lithologie1.code_id
            AND 
            codes_lithologie1.attribut_id = 11
            AND
            codes_lithologie1.gesteinstyp = '2'
     LEFT JOIN geologie_migration.codes AS codes_lithologie2
        ON 
            substr(holoz.neuer_code::text, 15, 2) = codes_lithologie2.code_id
            AND 
            codes_lithologie2.attribut_id = 12
            AND
            codes_lithologie2.gesteinstyp = '2'
    LEFT JOIN geologie_migration.codes AS codes_litho_lock
        ON 
            holoz.litho_lock = codes_litho_lock.code_id
            AND
            codes_litho_lock.attribut_id = 10
            AND
            codes_litho_lock.gesteinstyp = '2'
    LEFT JOIN geologie_migration.codes AS codes_litho_fest
        ON 
            holoz.litho_fest = codes_litho_fest.code_id
            AND
            codes_litho_fest.attribut_id = 10
            AND
            codes_litho_fest.gesteinstyp = '1'
    LEFT JOIN geologie_migration.codes AS codes_sacku_fest
        ON 
            holoz.sacku_fest = codes_sacku_fest.code_id
            AND 
            codes_sacku_fest.attribut_id = 13
            AND
            codes_sacku_fest.gesteinstyp = '1'
    LEFT JOIN geologie_migration.codes AS codes_verki_lock
        ON 
            holoz.verki_lock = codes_verki_lock.code_id
            AND
            codes_verki_lock.attribut_id = 13
            AND
            codes_verki_lock.gesteinstyp = '2'
    LEFT JOIN geologie_migration.codes AS codes_durchlaess
        ON 
            holoz.durchlaess = codes_durchlaess.code_id
            AND 
            codes_durchlaess.attribut_id = 14
    LEFT JOIN geologie_migration.codes AS codes_gw_art
        ON 
            holoz.gw_art = codes_gw_art.code_id
            AND 
            codes_gw_art.attribut_id = 15
    LEFT JOIN geologie_migration.codes AS codes_gw_fuehrun
        ON 
            holoz.gw_fuehrun = codes_gw_fuehrun.code_id
            AND 
            codes_gw_fuehrun.attribut_id = 16
    LEFT JOIN geologie_migration.codes AS codes_gespannt
        ON 
            holoz.gespannt = codes_gespannt.code_id
            AND 
            codes_gespannt.attribut_id = 17
    LEFT JOIN geologie_migration.codes AS codes_reib_winke
        ON 
            holoz.reib_winke = codes_reib_winke.code_id
            AND 
            codes_reib_winke.attribut_id = 18
    LEFT JOIN geologie_migration.codes AS codes_kohaesion
        ON 
            holoz.kohaesion = codes_kohaesion.code_id
            AND 
            codes_kohaesion.attribut_id = 19
    LEFT JOIN geologie_migration.codes AS codes_fels_reibe_
        ON 
            holoz.fels_reib_ = codes_fels_reibe_.code_id
            AND 
            codes_fels_reibe_.attribut_id = 20
    LEFT JOIN geologie_migration.codes AS codes_fels_kohae
        ON 
            holoz.fels_kohae = codes_fels_kohae.code_id
            AND 
            codes_fels_kohae.attribut_id = 21
    LEFT JOIN geologie_migration.codes AS codes_mat_maecht
        ON 
            holoz.mat_maecht = codes_mat_maecht.code_id
            AND 
            codes_mat_maecht.attribut_id = 22
    LEFT JOIN geologie_migration.codes AS codes_fehlmatmae
        ON 
            holoz.fehlmatmae= codes_fehlmatmae.code_id
            AND 
            codes_fehlmatmae.attribut_id = 23
WHERE 
    holoz.archive = 0
;
