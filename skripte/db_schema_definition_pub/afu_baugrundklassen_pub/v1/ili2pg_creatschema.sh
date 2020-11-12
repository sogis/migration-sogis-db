#java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar --modeldir 'http://models.geo.admin.ch;http://geo.so.ch/models' \
java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar --modeldir '/sogis/daten_tools/skripte/db_schema_definition_pub/migration_sogis-db/afu_baugrundklassen_pub/v1;http://models.geo.admin.ch' \
--dbschema afu_baugrundklassen_pub --models SO_AFU_Baugrundklassen_Publikation_20201023 \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName \
--createMetaInfo --createUnique --createNumChecks --nameByTopic \
--createscript afu_baugrundklassen_pub.sql
