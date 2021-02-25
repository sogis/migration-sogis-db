COMMENT ON SCHEMA
   avt_oeffentlicher_verkehr_pub
IS
   'Oeffentllicher Verkehr Kt. Solothurn: Haltestellen und Streckennetz. Fragen: pascal.stebler@bd.so.ch'
;

GRANT USAGE ON SCHEMA avt_oeffentlicher_verkehr_pub TO public, gretl
;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA avt_oeffentlicher_verkehr_pub TO gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA avt_oeffentlicher_verkehr_pub TO public
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA avt_oeffentlicher_verkehr_pub TO gretl
;

