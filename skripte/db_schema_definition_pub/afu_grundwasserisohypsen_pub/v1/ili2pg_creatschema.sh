java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar --dbschema afu_grundwasserisohypsen_pub --models SO_AFU_Grundwasserisohypsen_pub_20201105 \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName \
--createMetaInfo --createUnique --createNumChecks --nameByTopic \
--createscript afu_grundwasserisohypsen_pub.sql