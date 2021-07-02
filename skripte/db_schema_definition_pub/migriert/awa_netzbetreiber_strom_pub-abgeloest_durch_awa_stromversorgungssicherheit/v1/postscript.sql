COMMENT ON SCHEMA 
   awa_netzbetreiber_strom_pub 
IS 
   'Netzbetreiber Strom. Fragen: Amt für Wirtschaft und Arbeit (AWA)'
;

GRANT USAGE ON SCHEMA awa_netzbetreiber_strom_pub TO public, gretl
;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA awa_netzbetreiber_strom_pub TO gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA awa_netzbetreiber_strom_pub TO public
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA awa_netzbetreiber_strom_pub TO gretl
;


ALTER TABLE awa_netzbetreiber_strom_pub.netzbetrebr_strom_ebene_3 ADD konflikt_txt varchar(50) NOT NULL
;
ALTER TABLE awa_netzbetreiber_strom_pub.netzbetrebr_strom_ebene_5 ADD konflikt_txt varchar(50) NOT NULL
;
ALTER TABLE awa_netzbetreiber_strom_pub.netzbetrebr_strom_ebene_7 ADD konflikt_txt varchar(50) NOT NULL
;
