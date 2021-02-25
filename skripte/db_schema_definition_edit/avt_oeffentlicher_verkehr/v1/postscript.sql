COMMENT ON SCHEMA 
   avt_oeffentlicher_verkehr 
IS 
   'Oeffentllicher Verkehr Kt. Solothurn: Haltestellen und Streckennetz. Fragen: pascal.stebler@bd.so.ch'
;
CREATE ROLE avt_oeffentlicher_verkehr_read
;
CREATE ROLE avt_oeffentlicher_verkehr_write
;
GRANT USAGE ON SCHEMA avt_oeffentlicher_verkehr TO avt_oeffentlicher_verkehr_read, avt_oeffentlicher_verkehr_write, gretl
;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA avt_oeffentlicher_verkehr TO avt_oeffentlicher_verkehr_write, gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA avt_oeffentlicher_verkehr TO avt_oeffentlicher_verkehr_read
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA avt_oeffentlicher_verkehr TO avt_oeffentlicher_verkehr_write, gretl
;
GRANT avt_oeffentlicher_verkehr_write TO bvtaastp
;
GRANT avt_oeffentlicher_verkehr_read TO bvtaasck, bjsvw
;
