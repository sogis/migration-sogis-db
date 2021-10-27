COMMENT ON SCHEMA
    awjf_wald_oberhoehenbonitaet
IS
    'Erfassungsmodell für die modellierten Werte der Oberhöhenbonität im Wald. Fragen: pierre.cothereau@vd.so.ch'
;

CREATE ROLE awjf_wald_oberhoehenbonitaet_write
;

GRANT USAGE ON SCHEMA awjf_wald_oberhoehenbonitaet TO public, gretl, awjf_wald_oberhoehenbonitaet_write
;
GRANT SELECT ON TABLE awjf_wald_oberhoehenbonitaet.oberhoehenbonitaet TO public
;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA awjf_wald_oberhoehenbonitaet TO gretl, awjf_wald_oberhoehenbonitaet_write
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA awjf_wald_oberhoehenbonitaet TO gretl, awjf_wald_oberhoehenbonitaet_write
;
GRANT awjf_wald_oberhoehenbonitaet_write TO vkfaa, gdi_write
;
