-- Please check https://github.com/sogis/schema-jobs#erteilung-von-berechtigungen
-- for instructions on how to grant permissions.


-- System users with read privilege
GRANT ${dbSchema}${roleSuffix}_read TO ogc_server;
GRANT ${dbSchema}${roleSuffix}_read TO sogis_service;
GRANT ${dbSchema}${roleSuffix}_write TO gretl;

-- System users with write and read privileges


-- Groups or users with read privilege
GRANT ${dbSchema}${roleSuffix}_read TO bjsvw, vumaavat;

-- Groups or users with write and read privileges
