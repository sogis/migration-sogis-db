COMMENT ON SCHEMA 
   afu_erdwaermesonden_weitere 
IS 
   'Erdwärmedaten, welche nicht aus GELAN kommen. Fragen: AfU-Abteilung Erdwärme/Geothermie'
;

GRANT USAGE ON SCHEMA afu_erdwaermesonden_weitere TO public, gretl
;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA afu_erdwaermesonden_weitere TO gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA afu_erdwaermesonden_weitere TO public
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA afu_erdwaermesonden_weitere TO gretl
;
