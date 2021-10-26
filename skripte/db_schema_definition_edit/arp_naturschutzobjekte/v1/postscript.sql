COMMENT ON SCHEMA
    arp_naturschutzobjekte
IS
    'Erfassungsmodell für die Naturschuztobjekte. Fragen: valentin.burki@bd.so.ch'
;

CREATE ROLE arp_naturschutzobjekte_read
;
CREATE ROLE arp_naturschutzobjekte_write
;
GRANT arp_naturschutzobjekte_read TO barpa, bjsvw
;
GRANT arp_naturschutzobjekte_write TO barpabur, barparuf, gdi_write
;

GRANT USAGE ON SCHEMA arp_naturschutzobjekte TO arp_naturschutzobjekte_read, arp_naturschutzobjekte_write, gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA arp_naturschutzobjekte TO arp_naturschutzobjekte_read
;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA arp_naturschutzobjekte TO arp_naturschutzobjekte_write, gretl
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA arp_naturschutzobjekte TO arp_naturschutzobjekte_write, gretl
;

