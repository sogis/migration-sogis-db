java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar --dbschema afu_baugrundklassen_pub --models SO_AFU_Baugrundklassen_pub_20201023 \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName \
--createMetaInfo --createUnique --createNumChecks --nameByTopic \
--createscript afu_baugrundklassen_pub.sql
