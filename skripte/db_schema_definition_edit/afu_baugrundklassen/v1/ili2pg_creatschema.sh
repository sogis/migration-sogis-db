java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar --modeldir 'http://models.geo.admin.ch/;http://geo.so.ch/models;' --models SO_AFU_Baugrundklassen_20201023 \
--dbschema afu_baugrundklassen --defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName \
--createMetaInfo --createUnique --createNumChecks --nameByTopic \
--createscript afu_baugrundklassen.sql

