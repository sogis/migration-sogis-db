java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar \
--modeldir 'http://models.geo.admin.ch;http://geo.so.ch/models;/sogis/daten_tools/skripte/db_schema_definition_edit/migration_sogis-db/arp_naturschutzobjekte/v1' \
--models SO_ARP_Naturschutzobjekte_20210727 \
--dbschema arp_naturschutzobjekte --defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName \
--createMetaInfo --createUnique --createNumChecks --nameByTopic \
--createscript arp_naturschutzobjekte.sql
