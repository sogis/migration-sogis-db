COMMENT ON SCHEMA 
   afu_baugrundklassen
IS 
   'Baugrundklassen Fragen: markus.staehli@bd.so.ch'
;

GRANT USAGE ON SCHEMA afu_baugrundklassen TO public, gretl
;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA afu_baugrundklassen TO gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA afu_baugrundklassen TO public
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA afu_baugrundklassen TO gretl
;
