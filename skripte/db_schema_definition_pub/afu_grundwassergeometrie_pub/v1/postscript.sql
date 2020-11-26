COMMENT ON SCHEMA 
   afu_grundwassergeometrie_pub
IS 
   'Publikation der Gewässerschutzdaten. Fragen: AfU-Abteilung Wasser'
;

GRANT USAGE ON SCHEMA afu_grundwassergeometrie_pub TO afu_gewaesserschutz_pub_read, public, ogc_server, sogis_service, gretl
;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA afu_grundwassergeometrie_pub TO  gretl
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA afu_grundwassergeometrie_pub TO gretl
;

GRANT SELECT ON TABLE afu_grundwassergeometrie_pub.grundwassergmtrie_grundwasser_maechtigkeit TO public, ogc_server, sogis_service
;
GRANT SELECT ON TABLE afu_grundwassergeometrie_pub.grundwassergmtrie_grundwasser_mittelstand TO afu_gewaesserschutz_pub_read, ogc_server, sogis_service
;
GRANT SELECT ON TABLE afu_grundwassergeometrie_pub.grundwassergmtrie_grundwasser_tiefstand TO afu_gewaesserschutz_pub_read, ogc_server, sogis_service
;
GRANT SELECT ON TABLE afu_grundwassergeometrie_pub.grundwassergmtrie_grundwasserstrom_begrenzung_hgw TO public, ogc_server, sogis_service
;
GRANT SELECT ON TABLE afu_grundwassergeometrie_pub.grundwassergmtrie_isohypse_hoechster_grundwasserstand TO public, ogc_server, sogis_service
;
GRANT SELECT ON TABLE afu_grundwassergeometrie_pub.grundwassergmtrie_isohypse_mittlerer_grundwasserstand TO afu_gewaesserschutz_pub_read, ogc_server, sogis_service
;
GRANT SELECT ON TABLE afu_grundwassergeometrie_pub.grundwassergmtrie_isohypse_tiefer_grundwasserstand TO afu_gewaesserschutz_pub_read, ogc_server, sogis_service
;

ALTER TABLE afu_grundwassergeometrie_pub.grundwassergmtrie_grundwasser_maechtigkeit ADD maechtigkeit_txt varchar(10)
;
COMMENT ON COLUMN afu_grundwassergeometrie_pub.grundwassergmtrie_grundwasser_maechtigkeit.maechtigkeit_txt IS 'Grundwassermächtigkeit'
;
ALTER TABLE afu_grundwassergeometrie_pub.grundwassergmtrie_grundwasser_mittelstand ADD maechtigkeit_txt varchar(10)
;
COMMENT ON COLUMN afu_grundwassergeometrie_pub.grundwassergmtrie_grundwasser_mittelstand.maechtigkeit_txt IS 'Grundwassermächtigkeit'
;
ALTER TABLE afu_grundwassergeometrie_pub.grundwassergmtrie_grundwasser_tiefstand ADD maechtigkeit_txt varchar(10)
;
COMMENT ON COLUMN afu_grundwassergeometrie_pub.grundwassergmtrie_grundwasser_tiefstand.maechtigkeit_txt IS 'Grundwassermächtigkeit'
;
ALTER TABLE afu_grundwassergeometrie_pub.grundwassergmtrie_isohypse_hoechster_grundwasserstand ADD kurventyp_txt smallint
;
COMMENT ON COLUMN afu_grundwassergeometrie_pub.grundwassergmtrie_isohypse_hoechster_grundwasserstand.kurventyp_txt IS 'Unterscheidung in 10m-, 2m- und 1m- (Zwischen-) Isohypsen'
;
ALTER TABLE afu_grundwassergeometrie_pub.grundwassergmtrie_isohypse_mittlerer_grundwasserstand ADD kurventyp_txt smallint
;
COMMENT ON COLUMN afu_grundwassergeometrie_pub.grundwassergmtrie_isohypse_mittlerer_grundwasserstand.kurventyp_txt IS 'Unterscheidung in 10m-, 2m- und 1m- (Zwischen-) Isohypsen'
;
ALTER TABLE afu_grundwassergeometrie_pub.grundwassergmtrie_isohypse_tiefer_grundwasserstand ADD kurventyp_txt smallint
;
COMMENT ON COLUMN afu_grundwassergeometrie_pub.grundwassergmtrie_isohypse_tiefer_grundwasserstand.kurventyp_txt IS 'Unterscheidung in 10m-, 2m- und 1m- (Zwischen-) Isohypsen'
;