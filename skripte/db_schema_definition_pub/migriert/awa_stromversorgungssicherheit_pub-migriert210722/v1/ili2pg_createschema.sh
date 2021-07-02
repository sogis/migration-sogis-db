java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar --modeldir 'http://models.geo.admin.ch;http://geo.so.ch/models' --models SO_AWA_Stromversorgungssicherheit_Publikation_20210629  \
--dbschema awa_stromversorgungssicherheit_pub --defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName \
--createMetaInfo --createUnique --createNumChecks --nameByTopic \
--createscript awa_stromversorgungssicherheit_pub.sql
