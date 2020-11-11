COMMENT ON SCHEMA 
   afu_grundwasserisohypsen
IS 
   'Grundwasserisohypsen Fragen: claude.mueller@bd.so.ch'
;

GRANT USAGE ON SCHEMA afu_grundwasserisohypsen TO public, gretl
;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA afu_grundwasserisohypsen TO gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA afu_grundwasserisohypsen TO public
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA afu_grundwasserisohypsen TO gretl
;
