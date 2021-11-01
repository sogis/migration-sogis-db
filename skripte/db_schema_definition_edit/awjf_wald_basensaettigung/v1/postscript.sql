COMMENT ON SCHEMA
    awjf_wald_basensaettigung
IS
    'Erfassungsmodell für die modellierten Werte der Basensättigung im Wald. Fragen: pierre.cothereau@vd.so.ch'
;

CREATE ROLE awjf_wald_basensaettigung_write
;

GRANT USAGE ON SCHEMA awjf_wald_basensaettigung TO public
;
GRANT SELECT ON TABLE awjf_wald_basensaettigung.basensaettigung TO public
;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA awjf_wald_basensaettigung TO awjf_wald_basensaettigung_write, gretl
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA awjf_wald_basensaettigung TO awjf_wald_basensaettigung_write, gretl
;
GRANT awjf_wald_basensaettigung_write TO vkfaa, gdi_write
;
