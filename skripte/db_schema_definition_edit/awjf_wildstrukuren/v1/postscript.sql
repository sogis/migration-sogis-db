COMMENT ON SCHEMA
    awjf_wildstrukturen
IS
    'Erfassungsmodell für Wildstrukturen. Fragen: mark.struch@vd.so.ch'
;

CREATE ROLE awjf_wildstrukturen_read
;
CREATE ROLE awjf_wildstrukturen_write
;

GRANT USAGE ON SCHEMA awjf_wildstrukturen TO public, gretl, awjf_wildstrukturen_read, awjf_wildstrukturen_write
;
--GRANT SELECT ON TABLE awjf_wildstrukturen.wildtierkorridor TO public
--;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA awjf_wildstrukturen TO gretl, awjf_wildstrukturen_write
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA awjf_wildstrukturen TO gretl, awjf_wildstrukturen_write
;
GRANT awjf_wildstrukturen_write TO vkfaa, gdi_write
;
