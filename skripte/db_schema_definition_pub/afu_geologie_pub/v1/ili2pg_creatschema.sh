java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar --dbschema afu_geologie_pub --models SO_AFU_Geologie_20200831 \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName \
--createMetaInfo --createUnique --createNumChecks --nameByTopic \
--createscript afu_geologie.sql
