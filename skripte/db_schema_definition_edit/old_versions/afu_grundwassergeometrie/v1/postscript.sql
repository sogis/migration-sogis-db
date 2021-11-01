COMMENT ON SCHEMA 
   afu_grundwassergeometrie
IS 
   'Gewässerschutzdaten abgeleitet aus den aww_*-Tabellen im public-Schema der Erfassungs-DB. Fragen: AfU-Abteilung Wasser'
;

GRANT USAGE ON SCHEMA afu_grundwassergeometrie TO afu_gewaesserschutz_read, gretl
;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA afu_grundwassergeometrie TO afu_gewaesserschutz_write, gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA afu_grundwassergeometrie TO afu_gewaesserschutz_read
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA afu_grundwassergeometrie TO gretl
;
GRANT afu_gewaesserschutz_write to bjsvw
;

