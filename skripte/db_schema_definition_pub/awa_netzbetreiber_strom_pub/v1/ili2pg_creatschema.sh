java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar --modeldir '/sogis/daten_tools/skripte/db_schema_definition_pub/migration_sogis-db/awa_netzbetreiber_strom_pub/v1;http://models.geo.admin.ch' \
--dbschema awa_netzbetreiber_strom_pub --models SO_AWA_Netzbetreiber_Strom \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName \
--createMetaInfo --createUnique --createNumChecks --nameByTopic \
--createscript awa_netzbetreiber_strom_pub.sql
