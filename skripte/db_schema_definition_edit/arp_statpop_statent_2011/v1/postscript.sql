COMMENT ON SCHEMA 
   arp_statpop_statent_2011
IS 
   'Statistik der Bevölkerung und der Haushalte und Statistik der Unternehmensstruktur. Bundesamt für Statistik BFS. Fragen: valentin.burki@bd.so.ch'
;

GRANT USAGE ON SCHEMA arp_statpop_statent_2011 TO arp_statpop_statent_write, gretl
;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA arp_statpop_statent_2011 TO arp_statpop_statent_write, gretl
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA arp_statpop_statent_2011 TO arp_statpop_statent_write, gretl
;

