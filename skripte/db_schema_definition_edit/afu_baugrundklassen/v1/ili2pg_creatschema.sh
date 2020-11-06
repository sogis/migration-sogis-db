java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar --dbschema afu_baugrundklassen --models SO_AFU_Baugrundklassen_20201023 \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName \
--createMetaInfo --createUnique --createNumChecks --nameByTopic \
--createscript afu_baugrundklassen.sql

