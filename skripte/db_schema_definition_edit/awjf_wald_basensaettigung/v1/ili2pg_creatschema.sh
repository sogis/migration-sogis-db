# --nameByTopic weggelassen, da nur 1 Topic und 1 Klasse
java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar \
--modeldir 'http://models.geo.admin.ch;http://geo.so.ch/models;/sogis/daten_tools/skripte/db_schema_definition_edit/migration_sogis-db/awjf_wald_basensaettigung/v1' \
--models SO_AWJF_Wald_Basensaettigung_20211021 \
--dbschema awjf_wald_basensaettigung --defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName \
--createMetaInfo --createUnique --createNumChecks \
--createscript awjf_wald_basensaettigung.sql
