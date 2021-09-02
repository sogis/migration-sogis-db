java -jar /usr/local/ili2pg-3.9.1/ili2pg.jar --dbhost geodb.verw.rootso.org --dbport 5432 --dbdatabase sogis \
--dbusr $USER --dbpwd $(awk -v dbhost=$DBHOST -F ':' '$1~dbhost{print $5}' ~/.pgpass)  \
--modeldir 'http://models.geo.admin.ch/;http://geo.so.ch/models' \
--models SO_AWJF_Wegsanierungen_20170629 --disableValidation \
--export --dbschema awjf_wegsanierungen \
/sogis/daten_tools/skripte/db_schema_definition_edit/migration_sogis-db/awjf_wegsanierungen/v1/awjf_wegsanierungen.xtf

