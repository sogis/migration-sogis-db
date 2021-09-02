java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar --dbhost 10.36.43.197 --dbport 54321 --dbdatabase edit \
--dbusr admin --dbpwd admin \
--import --deleteData --dbschema awjf_wegsanierungen --models SO_AWJF_Wegsanierungen_20170629 --modeldir 'http://models.geo.admin.ch/;http://geo.so.ch/models' \
/sogis/daten_tools/skripte/db_schema_definition_edit/migration_sogis-db/awjf_wegsanierungen/v1/awjf_wegsanierungen.xtf
