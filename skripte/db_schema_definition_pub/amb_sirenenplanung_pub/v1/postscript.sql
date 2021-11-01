COMMENT ON SCHEMA 
   amb_sirenenplanung_pub 
IS 
   'Sirenenplanung. Fragen: AMB-Abteilung Zivilschutz'
;

GRANT USAGE ON SCHEMA amb_sirenenplanung_pub TO public, gretl, ogc_server, sogis_service
;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA amb_sirenenplanung_pub TO gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA amb_sirenenplanung_pub TO public, ogc_server, sogis_service
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA amb_sirenenplanung_pub TO gretl
;
