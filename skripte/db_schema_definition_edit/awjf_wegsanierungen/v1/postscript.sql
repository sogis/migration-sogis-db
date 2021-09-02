COMMENT ON SCHEMA 
   awjf_wegsanierungen 
IS 
   'Wegsanierungen im Kanton Solothurn. Fragen: manuel.schnellmann@vd.so.ch'
;

CREATE ROLE awjf_wegsanierungen_write
;
GRANT awjf_wegsanierungen_write TO vkfaaroe, vkfaascm, vkfaajos, vkfaabia, vkfaacot, vkfaahub, vkfaahol, bjsvw
;


GRANT USAGE ON SCHEMA awjf_wegsanierungen TO awjf_wegsanierungen_write, gretl
;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA awjf_wegsanierungen TO awjf_wegsanierungen_write, gretl
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA awjf_wegsanierungen TO awjf_wegsanierungen_write, gretl
;

