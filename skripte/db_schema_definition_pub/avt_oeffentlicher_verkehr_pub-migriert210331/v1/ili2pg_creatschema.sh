java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar --modeldir 'http://models.geo.admin.ch;http://geo.so.ch/models' --models SO_AVT_Oeffentlicher_Verkehr_20210205 \
--dbschema avt_oeffentlicher_verkehr_pub --defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName \
--createMetaInfo --createUnique --createNumChecks --nameByTopic \
--createscript avt_oeffentlicher_verkehr_pub.sql
