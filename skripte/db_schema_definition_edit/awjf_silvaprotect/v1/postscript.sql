COMMENT ON SCHEMA
    awjf_silvaprotect
IS
    'Erfassungsmodell des Schemas awjf_silvaprotect (Schutzwald-Modell). Fragen: manuel.schnellmann@vd.so.ch'
;

CREATE ROLE awjf_silvaprotect_write
;

GRANT USAGE ON SCHEMA awjf_silvaprotect TO public, gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA awjf_silvaprotect TO public
;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA awjf_silvaprotect TO awjf_silvaprotect_write, gretl
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA awjf_silvaprotect TO awjf_silvaprotect_write, gretl
;
GRANT awjf_silvaprotect_write TO vkfaascm, vkfaaroe, vkfaacot, gdi_write
;
