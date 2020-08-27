java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar --dbschema amb_sirenenplanung_pub --models SO_AMB_Sirenenplanung_pub_20200831 \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName \
--createMetaInfo --createUnique --createNumChecks --nameByTopic \
--createscript amb_sirenenplanung_pub.sql
