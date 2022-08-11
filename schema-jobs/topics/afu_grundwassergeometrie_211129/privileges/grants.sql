-- Please check https://github.com/sogis/schema-jobs#erteilung-von-berechtigungen
-- for instructions on how to grant permissions.


-- System users
GRANT ${dbSchema}${roleSuffix}_write TO gretl;


-- Groups and users
GRANT ${dbSchema}${roleSuffix}_read TO bjsvw;
GRANT ${dbSchema}${roleSuffix}_write TO gdi_write;
GRANT ${dbSchema}${roleSuffix}_write TO vumaavat;
