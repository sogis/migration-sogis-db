java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar --modeldir 'http://models.geo.admin.ch;http://geo.so.ch/models;/sogis/daten_tools/skripte/db_schema_definition_edit/migration_sogis-db/awjf_silvaprotect/v1' --models SO_AWJF_Silvaprotect_20210831 \
--dbschema awjf_silvaprotect --defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName \
--createMetaInfo --createUnique --createNumChecks --nameByTopic \
--createscript awjf_silvaprotect.sql
