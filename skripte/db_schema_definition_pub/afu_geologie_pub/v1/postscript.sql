COMMENT ON SCHEMA 
   afu_geologie_pub 
IS 
   'Geologie. Fragen: markus.staehli@bd.so.ch'
;

GRANT USAGE ON SCHEMA afu_geologie_pub TO public, gretl, ogc_server, sogis_service
;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA afu_geologie_pub TO gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA afu_geologie_pub TO public, gretl, ogc_server, sogis_service
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA afu_geologie_pub TO gretl
;


-- geologie_grundschicht
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD system1_txt varchar(10) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.system1_txt IS 'Geologisches System (von ...)'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD system2_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.system2_txt IS 'Geologisches System (bis ...)'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD serie1_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.serie1_txt IS 'Geologisches Serie (von ...)'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD serie2_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.serie2_txt IS 'Geologisches Serie (bis ...)'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD formation1_txt varchar(100) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.formation1_txt IS 'Geologische Formation (von ...)'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD formation2_txt varchar(100) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.formation2_txt IS 'Geologische Formation (bis ...)'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD schichtgliederung_txt varchar(100) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.schichtgliederung_txt IS 'Geologische Schichtgliederung  (von ... bis ...)'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD ausbildung_festgestein_txt varchar(30)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.ausbildung_festgestein_txt IS 'Ausbildung des Festgesteins'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD lithologie_festgestein_txt varchar(100)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.lithologie_festgestein_txt IS 'Lithologie des Festgesteins'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD sackung_festgestein_txt varchar(20)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.sackung_festgestein_txt IS 'Sackung  des Festgesteins'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD ausbildung_lockergestein_txt varchar(100)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.ausbildung_lockergestein_txt IS 'Ausbildung des Lockergesteins'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD lithologie_lockergestein_txt varchar(100)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.lithologie_lockergestein_txt IS 'Lithologie des Lockergesteins'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD lithologie1_txt varchar(100)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.lithologie1_txt IS 'Lithologie1'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD lithologie2_txt varchar(100)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.lithologie2_txt IS 'Lithologie2'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD verkittungsgrad_lockergestein_txt varchar(20)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.verkittungsgrad_lockergestein_txt IS 'Verkittungsgrad des Lockergesteins'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD wasserdurchlaessigkeit_txt varchar(100) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.wasserdurchlaessigkeit_txt IS 'Wasserdurchlässigkeit'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD grundwasser_art_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.grundwasser_art_txt IS 'Art des Grundwassers'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD grundwasserfuehrung_maechtigkeit_txt varchar(50)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.grundwasserfuehrung_maechtigkeit_txt IS 'Grundwasserführung und Mächtigkeit'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD grundwassertyp_txt varchar(50)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.grundwassertyp_txt IS 'Druck- und Lageverhältnisse des Grundwassers'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD reibungswinkel_lockergestein_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.reibungswinkel_lockergestein_txt IS 'Reibungswinkel des Lockergesteins bzw. Verwitterungsproduktes'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD kohaesion_lockergestein_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.kohaesion_lockergestein_txt IS 'Kohäsion [kN/m2] des Lockergestein bzw. Verwitterungsproduktes'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD reibungswinkel_festgestein_txt varchar(20)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.reibungswinkel_festgestein_txt IS 'Reibungswinkel des unverwitterten Festgesteins'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD kohaesion_festgestein_txt varchar(20)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.kohaesion_festgestein_txt IS 'Kohäsion [kN/m2] des unverwitterten Festgesteins'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD maechtigkeit_material_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.maechtigkeit_material_txt IS 'Mächtigkeit des beschriebenen Materials'
;
ALTER TABLE afu_geologie_pub.geologie_grundschicht ADD fehlendes_material_bis_naechster_layer_txt varchar(20)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_grundschicht.fehlendes_material_bis_naechster_layer_txt IS 'Fehlendes (nicht beschriebenes) Material bis zum nächsten Layer'
;

-- geologie_holozaen
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD system1_txt varchar(10) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.system1_txt IS 'Geologisches System (von ...)'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD system2_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.system2_txt IS 'Geologisches System (bis ...)'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD serie1_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.serie1_txt IS 'Geologisches Serie (von ...)'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD serie2_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.serie2_txt IS 'Geologisches Serie (bis ...)'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD formation1_txt varchar(100) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.formation1_txt IS 'Geologische Formation (von ...)'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD formation2_txt varchar(100) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.formation2_txt IS 'Geologische Formation (bis ...)'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD schichtgliederung_txt varchar(100) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.schichtgliederung_txt IS 'Geologische Schichtgliederung  (von ... bis ...)'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD ausbildung_festgestein_txt varchar(30)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.ausbildung_festgestein_txt IS 'Ausbildung des Festgesteins'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD lithologie_festgestein_txt varchar(100)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.lithologie_festgestein_txt IS 'Lithologie des Festgesteins'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD sackung_festgestein_txt varchar(20)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.sackung_festgestein_txt IS 'Sackung  des Festgesteins'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD ausbildung_lockergestein_txt varchar(100)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.ausbildung_lockergestein_txt IS 'Ausbildung des Lockergesteins'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD lithologie_lockergestein_txt varchar(100)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.lithologie_lockergestein_txt IS 'Lithologie des Lockergesteins'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD lithologie1_txt varchar(100)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.lithologie1_txt IS 'Lithologie1'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD lithologie2_txt varchar(100)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.lithologie2_txt IS 'Lithologie2'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD verkittungsgrad_lockergestein_txt varchar(20)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.verkittungsgrad_lockergestein_txt IS 'Verkittungsgrad des Lockergesteins'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD wasserdurchlaessigkeit_txt varchar(100) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.wasserdurchlaessigkeit_txt IS 'Wasserdurchlässigkeit'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD grundwasser_art_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.grundwasser_art_txt IS 'Art des Grundwassers'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD grundwasserfuehrung_maechtigkeit_txt varchar(50)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.grundwasserfuehrung_maechtigkeit_txt IS 'Grundwasserführung und Mächtigkeit'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD grundwassertyp_txt varchar(50)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.grundwassertyp_txt IS 'Druck- und Lageverhältnisse des Grundwassers'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD reibungswinkel_lockergestein_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.reibungswinkel_lockergestein_txt IS 'Reibungswinkel des Lockergesteins bzw. Verwitterungsproduktes'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD kohaesion_lockergestein_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.kohaesion_lockergestein_txt IS 'Kohäsion [kN/m2] des Lockergestein bzw. Verwitterungsproduktes'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD reibungswinkel_festgestein_txt varchar(20)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.reibungswinkel_festgestein_txt IS 'Reibungswinkel des unverwitterten Festgesteins'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD kohaesion_festgestein_txt varchar(20)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.kohaesion_festgestein_txt IS 'Kohäsion [kN/m2] des unverwitterten Festgesteins'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD maechtigkeit_material_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.maechtigkeit_material_txt IS 'Mächtigkeit des beschriebenen Materials'
;
ALTER TABLE afu_geologie_pub.geologie_holozaen ADD fehlendes_material_bis_naechster_layer_txt varchar(20)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_holozaen.fehlendes_material_bis_naechster_layer_txt IS 'Fehlendes (nicht beschriebenes) Material bis zum nächsten Layer'
;


-- geologie_pleistozaen
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD system1_txt varchar(10) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.system1_txt IS 'Geologisches System (von ...)'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD system2_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.system2_txt IS 'Geologisches System (bis ...)'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD serie1_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.serie1_txt IS 'Geologisches Serie (von ...)'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD serie2_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.serie2_txt IS 'Geologisches Serie (bis ...)'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD formation1_txt varchar(100) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.formation1_txt IS 'Geologische Formation (von ...)'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD formation2_txt varchar(100) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.formation2_txt IS 'Geologische Formation (bis ...)'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD schichtgliederung_txt varchar(100) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.schichtgliederung_txt IS 'Geologische Schichtgliederung  (von ... bis ...)'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD ausbildung_festgestein_txt varchar(30)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.ausbildung_festgestein_txt IS 'Ausbildung des Festgesteins'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD lithologie_festgestein_txt varchar(100)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.lithologie_festgestein_txt IS 'Lithologie des Festgesteins'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD sackung_festgestein_txt varchar(20)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.sackung_festgestein_txt IS 'Sackung  des Festgesteins'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD ausbildung_lockergestein_txt varchar(100)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.ausbildung_lockergestein_txt IS 'Ausbildung des Lockergesteins'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD lithologie_lockergestein_txt varchar(100)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.lithologie_lockergestein_txt IS 'Lithologie des Lockergesteins'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD lithologie1_txt varchar(100)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.lithologie1_txt IS 'Lithologie1'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD lithologie2_txt varchar(100)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.lithologie2_txt IS 'Lithologie2'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD verkittungsgrad_lockergestein_txt varchar(20)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.verkittungsgrad_lockergestein_txt IS 'Verkittungsgrad des Lockergesteins'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD wasserdurchlaessigkeit_txt varchar(100) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.wasserdurchlaessigkeit_txt IS 'Wasserdurchlässigkeit'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD grundwasser_art_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.grundwasser_art_txt IS 'Art des Grundwassers'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD grundwasserfuehrung_maechtigkeit_txt varchar(50)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.grundwasserfuehrung_maechtigkeit_txt IS 'Grundwasserführung und Mächtigkeit'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD grundwassertyp_txt varchar(50)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.grundwassertyp_txt IS 'Druck- und Lageverhältnisse des Grundwassers'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD reibungswinkel_lockergestein_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.reibungswinkel_lockergestein_txt IS 'Reibungswinkel des Lockergesteins bzw. Verwitterungsproduktes'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD kohaesion_lockergestein_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.kohaesion_lockergestein_txt IS 'Kohäsion [kN/m2] des Lockergestein bzw. Verwitterungsproduktes'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD reibungswinkel_festgestein_txt varchar(20)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.reibungswinkel_festgestein_txt IS 'Reibungswinkel des unverwitterten Festgesteins'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD kohaesion_festgestein_txt varchar(20)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.kohaesion_festgestein_txt IS 'Kohäsion [kN/m2] des unverwitterten Festgesteins'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD maechtigkeit_material_txt varchar(20) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.maechtigkeit_material_txt IS 'Mächtigkeit des beschriebenen Materials'
;
ALTER TABLE afu_geologie_pub.geologie_pleistozaen ADD fehlendes_material_bis_naechster_layer_txt varchar(20)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_pleistozaen.fehlendes_material_bis_naechster_layer_txt IS 'Fehlendes (nicht beschriebenes) Material bis zum nächsten Layer'
;

-- geologie_karstformen
ALTER TABLE afu_geologie_pub.geologie_karstformen ADD typ_txt varchar(50) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_karstformen.typ_txt IS 'Aufnahme der Dolinen und Höhlen'
;

-- geologie_schichtfallen
ALTER TABLE afu_geologie_pub.geologie_schichtfallen ADD typ_txt varchar(100) NOT NULL
;
COMMENT ON COLUMN afu_geologie_pub.geologie_schichtfallen.typ_txt IS 'Kennzeichnung der Sonderfälle der horizontalen, vertikalen und überkippten Schichtlagerung'
;

--geologie_tektonische_strukturen
ALTER TABLE afu_geologie_pub.geologie_tektonische_strukturen ADD typ_txt varchar(50)
;
COMMENT ON COLUMN afu_geologie_pub.geologie_tektonische_strukturen.typ_txt IS 'Beobachtete und vermutete tektonische Strukturen: Verwerfungen, Über- schiebungen, Synklinal- und Antiklinalachsen'
;
