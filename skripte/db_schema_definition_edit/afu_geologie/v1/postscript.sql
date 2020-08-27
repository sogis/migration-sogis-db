COMMENT ON SCHEMA 
   afu_geologie 
IS 
   'Geologie. Fragen: markus.staehli@bd.so.ch'
;

GRANT USAGE ON SCHEMA afu_geologie TO public, gretl
;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA afu_geologie TO gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA afu_geologie TO public
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA afu_geologie TO gretl
;
