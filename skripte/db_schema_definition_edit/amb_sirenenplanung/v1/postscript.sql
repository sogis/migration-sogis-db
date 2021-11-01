COMMENT ON SCHEMA 
   amb_sirenenplanung 
IS 
   'Sirenenplanung. Fragen: AMB-Abteilung Zivilschutz'
;

GRANT USAGE ON SCHEMA amb_sirenenplanung TO public, gretl
;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA amb_sirenenplanung TO gretl, gdi_write
;
GRANT SELECT ON ALL TABLES IN SCHEMA amb_sirenenplanung TO public
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA amb_sirenenplanung TO gretl, gdi_write
;
