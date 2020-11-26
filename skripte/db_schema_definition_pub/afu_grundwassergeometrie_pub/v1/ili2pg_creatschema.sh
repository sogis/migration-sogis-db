java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar --dbschema afu_grundwassergeometrie_pub --models SO_AFU_Grundwassergeometrie_20201201 \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName \
--createMetaInfo --createUnique --createNumChecks --nameByTopic \
--createscript afu_grundwassergeometrie_pub.sql
