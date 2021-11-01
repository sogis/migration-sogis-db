COMMENT ON SCHEMA
    awjf_wildstrukturen
IS
    'Erfassungsmodell für Wildstrukturen. Fragen: mark.struch@vd.so.ch'
;

CREATE ROLE awjf_wildstrukturen_write
;

GRANT USAGE ON SCHEMA awjf_wildstrukturen TO public
;
GRANT SELECT ON ALL TABLES IN SCHEMA awjf_wildstrukturen TO public
;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA awjf_wildstrukturen TO awjf_wildstrukturen_write, gretl
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA awjf_wildstrukturen TO awjf_wildstrukturen_write, gretl
;
GRANT awjf_wildstrukturen_write TO vkfaacot, vkfaascm, gdi_write
;
