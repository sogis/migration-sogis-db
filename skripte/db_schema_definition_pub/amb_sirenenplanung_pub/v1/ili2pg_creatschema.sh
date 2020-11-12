java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar --modeldir '/sogis/daten_tools/skripte/db_schema_definition_pub/migration_sogis-db/amb_sirenenplanung_pub/v1;http://models.geo.admin.ch' \
--dbschema amb_sirenenplanung_pub --models SO_AMB_Sirenenplanung_Publikation_20200831 \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName \
--createMetaInfo --createUnique --createNumChecks --nameByTopic \
--createscript amb_sirenenplanung_pub.sql
