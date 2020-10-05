COMMENT ON SCHEMA 
   awa_netzbetreiber_strom 
IS 
   'Netzbetreiber Strom. Fragen: Amt für Wirtschaft und Arbeit (AWA)'
;

GRANT USAGE ON SCHEMA awa_netzbetreiber_strom TO public, gretl
;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA awa_netzbetreiber_strom TO gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA awa_netzbetreiber_strom TO public
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA awa_netzbetreiber_strom TO gretl
;
