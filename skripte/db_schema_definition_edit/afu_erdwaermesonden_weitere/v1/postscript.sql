COMMENT ON SCHEMA 
   afu_erdwaermesonden_weitere 
IS 
   'Erdwärmedaten. Fragen: AfU-Abteilung Erdwärme/Geothermie'
;

GRANT USAGE ON SCHEMA afu_erdwaermesonden_weitere TO public, gretl
;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA afu_erdwaermesonden_weitere TO gdi_write, gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA afu_erdwaermesonden_weitere TO public
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA afu_erdwaermesonden_weitere TO gdi_write, gretl
;