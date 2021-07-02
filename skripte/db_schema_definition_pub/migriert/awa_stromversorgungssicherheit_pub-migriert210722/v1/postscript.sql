COMMENT ON SCHEMA 
   awa_stromversorgungssicherheit_pub 
IS 
   'Publikationsmodell der Netzgebiete (Stromversorgungssicherheit AWA). Fragen: david.borer@awa.so.ch, peter.senn@bd.so.ch'
;

GRANT USAGE ON SCHEMA awa_stromversorgungssicherheit_pub TO public, gretl
;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA awa_stromversorgungssicherheit_pub TO gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA awa_stromversorgungssicherheit_pub TO public
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA awa_stromversorgungssicherheit_pub TO gretl
;

