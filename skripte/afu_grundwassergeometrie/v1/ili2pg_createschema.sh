java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar --modeldir 'http://models.geo.admin.ch;http://geo.so.ch/models;/sogis/daten_tools/skripte/db_schema_definition_edit/migration_sogis-db/afu_grundwassergeometrie/v1' --models SO_AFU_Grundwassergeometrie_20201201 \
--dbschema afu_grundwassergeometrie --defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName \
--createMetaInfo --createUnique --createNumChecks --nameByTopic \
--createscript afu_grundwassergeometrie.sql
