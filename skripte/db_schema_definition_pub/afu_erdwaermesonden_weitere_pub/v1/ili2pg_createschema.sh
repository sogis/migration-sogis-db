java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar --modeldir 'http://models.geo.admin.ch;http://geo.so.ch/' --models SO_AFU_Erdwaermesonden_weitere_Publikation_20210125 \
--dbschema afu_erdwaermesonden_weitere_pub --defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName \
--createMetaInfo --createUnique --createNumChecks --nameByTopic \
--createscript afu_erdwaermesonden_weitere_pub.sql
