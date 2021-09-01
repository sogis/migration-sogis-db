COMMENT ON SCHEMA
    awjf_silvaprotect
IS
    'Erfassungsmodell des Schemas awjf_silvaprotect (Schutzwald-Modell). Fragen: manuel.schnellmann@vd.so.ch'
;

CREATE ROLE awjf_silvaprotect_read
;

GRANT USAGE ON SCHEMA awjf_silvaprotect TO awjf_silvaprotect_read, gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA awjf_silvaprotect TO awjf_silvaprotect_read
;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA awjf_silvaprotect TO gretl
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA awjf_silvaprotect TO gretl
;
GRANT awjf_silvaprotect_read TO vkfaascm, vkfaaroe, vkfaacot, bjsvw
;
