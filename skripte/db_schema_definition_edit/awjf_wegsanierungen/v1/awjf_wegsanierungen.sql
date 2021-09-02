CREATE SCHEMA IF NOT EXISTS awjf_wegsanierungen;
CREATE SEQUENCE awjf_wegsanierungen.t_ili2db_seq;;
-- GeometryCHLV95_V1.LineStructure
CREATE TABLE awjf_wegsanierungen.linestructure (
  T_Id bigint PRIMARY KEY DEFAULT nextval('awjf_wegsanierungen.t_ili2db_seq')
  ,T_Seq bigint NULL
  ,line geometry(LINESTRING,2056) NULL
  ,multiline_lines bigint NULL
)
;
CREATE INDEX linestructure_line_idx ON awjf_wegsanierungen.linestructure USING GIST ( line );
CREATE INDEX linestructure_multiline_lines_idx ON awjf_wegsanierungen.linestructure ( multiline_lines );
-- GeometryCHLV95_V1.MultiLine
CREATE TABLE awjf_wegsanierungen.multiline (
  T_Id bigint PRIMARY KEY DEFAULT nextval('awjf_wegsanierungen.t_ili2db_seq')
  ,T_Seq bigint NULL
)
;
-- SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung
CREATE TABLE awjf_wegsanierungen.wegsanierungen_wegsanierung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('awjf_wegsanierungen.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,id_wegsanierung integer NOT NULL
  ,projekt varchar(200) NULL
  ,projekt_nr varchar(200) NULL
  ,aname varchar(200) NULL
  ,laenge_beitrag decimal(12,2) NULL
  ,fid_ges_nr integer NULL
  ,jahr integer NULL
  ,kosten decimal(12,2) NULL
  ,beitrag decimal(12,2) NULL
  ,bemerkung varchar(200) NULL
  ,id_reserve integer NULL
  ,geometrie geometry(MULTILINESTRING,2056) NOT NULL
  ,astatus varchar(255) NOT NULL
)
;
CREATE INDEX wegsanierungen_wegsanirung_geometrie_idx ON awjf_wegsanierungen.wegsanierungen_wegsanierung USING GIST ( geometrie );
COMMENT ON COLUMN awjf_wegsanierungen.wegsanierungen_wegsanierung.id_wegsanierung IS 'automatische ID der Wegsanierung (AWJF intern)';
COMMENT ON COLUMN awjf_wegsanierungen.wegsanierungen_wegsanierung.projekt IS 'Projektname';
COMMENT ON COLUMN awjf_wegsanierungen.wegsanierungen_wegsanierung.projekt_nr IS 'Projektnummer';
COMMENT ON COLUMN awjf_wegsanierungen.wegsanierungen_wegsanierung.aname IS 'Wegname, Abschnitt, Kennzeichnung';
COMMENT ON COLUMN awjf_wegsanierungen.wegsanierungen_wegsanierung.laenge_beitrag IS 'Laenge relevant fuer Beitrag in m';
COMMENT ON COLUMN awjf_wegsanierungen.wegsanierungen_wegsanierung.fid_ges_nr IS 'Zuordnung zu Gesuchsteller';
COMMENT ON COLUMN awjf_wegsanierungen.wegsanierungen_wegsanierung.jahr IS 'Abrechnungsjahr (nicht gleich Ausfuehrung)';
COMMENT ON COLUMN awjf_wegsanierungen.wegsanierungen_wegsanierung.kosten IS 'beitragsberechtigte Kosten in Fr.';
COMMENT ON COLUMN awjf_wegsanierungen.wegsanierungen_wegsanierung.beitrag IS 'Beitraege Kanton in Fr.';
COMMENT ON COLUMN awjf_wegsanierungen.wegsanierungen_wegsanierung.bemerkung IS 'Kommentar';
COMMENT ON COLUMN awjf_wegsanierungen.wegsanierungen_wegsanierung.id_reserve IS 'Reserve ID fuer unvorhergesehene Zuordnung';
COMMENT ON COLUMN awjf_wegsanierungen.wegsanierungen_wegsanierung.geometrie IS 'Geometrie der Wegsanierung';
COMMENT ON COLUMN awjf_wegsanierungen.wegsanierungen_wegsanierung.astatus IS 'Status';
CREATE TABLE awjf_wegsanierungen.T_ILI2DB_BASKET (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NULL
  ,topic varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,attachmentKey varchar(200) NOT NULL
  ,domains varchar(1024) NULL
)
;
CREATE INDEX T_ILI2DB_BASKET_dataset_idx ON awjf_wegsanierungen.t_ili2db_basket ( dataset );
CREATE TABLE awjf_wegsanierungen.T_ILI2DB_DATASET (
  T_Id bigint PRIMARY KEY
  ,datasetName varchar(200) NULL
)
;
CREATE TABLE awjf_wegsanierungen.T_ILI2DB_INHERITANCE (
  thisClass varchar(1024) PRIMARY KEY
  ,baseClass varchar(1024) NULL
)
;
CREATE TABLE awjf_wegsanierungen.T_ILI2DB_SETTINGS (
  tag varchar(60) PRIMARY KEY
  ,setting varchar(1024) NULL
)
;
CREATE TABLE awjf_wegsanierungen.T_ILI2DB_TRAFO (
  iliname varchar(1024) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE awjf_wegsanierungen.T_ILI2DB_MODEL (
  filename varchar(250) NOT NULL
  ,iliversion varchar(3) NOT NULL
  ,modelName text NOT NULL
  ,content text NOT NULL
  ,importDate timestamp NOT NULL
  ,PRIMARY KEY (modelName,iliversion)
)
;
CREATE TABLE awjf_wegsanierungen.wegsanierungen_wegsanierung_status (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE awjf_wegsanierungen.T_ILI2DB_CLASSNAME (
  IliName varchar(1024) PRIMARY KEY
  ,SqlName varchar(1024) NOT NULL
)
;
CREATE TABLE awjf_wegsanierungen.T_ILI2DB_ATTRNAME (
  IliName varchar(1024) NOT NULL
  ,SqlName varchar(1024) NOT NULL
  ,ColOwner varchar(1024) NOT NULL
  ,Target varchar(1024) NULL
  ,PRIMARY KEY (ColOwner,SqlName)
)
;
CREATE TABLE awjf_wegsanierungen.T_ILI2DB_COLUMN_PROP (
  tablename varchar(255) NOT NULL
  ,subtype varchar(255) NULL
  ,columnname varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE awjf_wegsanierungen.T_ILI2DB_TABLE_PROP (
  tablename varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE awjf_wegsanierungen.T_ILI2DB_META_ATTRS (
  ilielement varchar(255) NOT NULL
  ,attr_name varchar(1024) NOT NULL
  ,attr_value varchar(1024) NOT NULL
)
;
ALTER TABLE awjf_wegsanierungen.linestructure ADD CONSTRAINT linestructure_multiline_lines_fkey FOREIGN KEY ( multiline_lines ) REFERENCES awjf_wegsanierungen.multiline DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE awjf_wegsanierungen.wegsanierungen_wegsanierung ADD CONSTRAINT wegsanierungen_wegsanrung_id_wegsanierung_check CHECK( id_wegsanierung BETWEEN 0 AND 1000000000);
ALTER TABLE awjf_wegsanierungen.wegsanierungen_wegsanierung ADD CONSTRAINT wegsanierungen_wegsanrung_laenge_beitrag_check CHECK( laenge_beitrag BETWEEN 0.0 AND 1.0E9);
ALTER TABLE awjf_wegsanierungen.wegsanierungen_wegsanierung ADD CONSTRAINT wegsanierungen_wegsanrung_fid_ges_nr_check CHECK( fid_ges_nr BETWEEN 0 AND 1000000000);
ALTER TABLE awjf_wegsanierungen.wegsanierungen_wegsanierung ADD CONSTRAINT wegsanierungen_wegsanrung_jahr_check CHECK( jahr BETWEEN 1582 AND 2999);
ALTER TABLE awjf_wegsanierungen.wegsanierungen_wegsanierung ADD CONSTRAINT wegsanierungen_wegsanrung_kosten_check CHECK( kosten BETWEEN 0.0 AND 1.0E9);
ALTER TABLE awjf_wegsanierungen.wegsanierungen_wegsanierung ADD CONSTRAINT wegsanierungen_wegsanrung_beitrag_check CHECK( beitrag BETWEEN 0.0 AND 1.0E9);
ALTER TABLE awjf_wegsanierungen.wegsanierungen_wegsanierung ADD CONSTRAINT wegsanierungen_wegsanrung_id_reserve_check CHECK( id_reserve BETWEEN 0 AND 1000000000);
ALTER TABLE awjf_wegsanierungen.T_ILI2DB_BASKET ADD CONSTRAINT T_ILI2DB_BASKET_dataset_fkey FOREIGN KEY ( dataset ) REFERENCES awjf_wegsanierungen.T_ILI2DB_DATASET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX T_ILI2DB_DATASET_datasetName_key ON awjf_wegsanierungen.T_ILI2DB_DATASET (datasetName)
;
CREATE UNIQUE INDEX T_ILI2DB_MODEL_modelName_iliversion_key ON awjf_wegsanierungen.T_ILI2DB_MODEL (modelName,iliversion)
;
CREATE UNIQUE INDEX T_ILI2DB_ATTRNAME_ColOwner_SqlName_key ON awjf_wegsanierungen.T_ILI2DB_ATTRNAME (ColOwner,SqlName)
;
INSERT INTO awjf_wegsanierungen.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('GeometryCHLV95_V1.MultiLine','multiline');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung','wegsanierungen_wegsanierung');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('GeometryCHLV95_V1.LineStructure','linestructure');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung.Status','wegsanierungen_wegsanierung_status');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung.Kosten','kosten','wegsanierungen_wegsanierung',NULL);
INSERT INTO awjf_wegsanierungen.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung.Laenge_Beitrag','laenge_beitrag','wegsanierungen_wegsanierung',NULL);
INSERT INTO awjf_wegsanierungen.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('GeometryCHLV95_V1.LineStructure.Line','line','linestructure',NULL);
INSERT INTO awjf_wegsanierungen.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung.Jahr','jahr','wegsanierungen_wegsanierung',NULL);
INSERT INTO awjf_wegsanierungen.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung.ID_Reserve','id_reserve','wegsanierungen_wegsanierung',NULL);
INSERT INTO awjf_wegsanierungen.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung.FID_Ges_Nr','fid_ges_nr','wegsanierungen_wegsanierung',NULL);
INSERT INTO awjf_wegsanierungen.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung.Name','aname','wegsanierungen_wegsanierung',NULL);
INSERT INTO awjf_wegsanierungen.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung.Bemerkung','bemerkung','wegsanierungen_wegsanierung',NULL);
INSERT INTO awjf_wegsanierungen.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung.Status','astatus','wegsanierungen_wegsanierung',NULL);
INSERT INTO awjf_wegsanierungen.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung.Beitrag','beitrag','wegsanierungen_wegsanierung',NULL);
INSERT INTO awjf_wegsanierungen.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung.ID_Wegsanierung','id_wegsanierung','wegsanierungen_wegsanierung',NULL);
INSERT INTO awjf_wegsanierungen.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('GeometryCHLV95_V1.MultiLine.Lines','multiline_lines','linestructure','multiline');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung.Projekt_Nr','projekt_nr','wegsanierungen_wegsanierung',NULL);
INSERT INTO awjf_wegsanierungen.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung.Geometrie','geometrie','wegsanierungen_wegsanierung',NULL);
INSERT INTO awjf_wegsanierungen.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung.Projekt','projekt','wegsanierungen_wegsanierung',NULL);
INSERT INTO awjf_wegsanierungen.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('GeometryCHLV95_V1.MultiLine','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung.Geometrie','ch.ehi.ili2db.multiLineTrafo','coalesce');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('GeometryCHLV95_V1.LineStructure','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('GeometryCHLV95_V1.LineStructure',NULL);
INSERT INTO awjf_wegsanierungen.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AWJF_Wegsanierungen_20170629.Wegsanierungen.Wegsanierung',NULL);
INSERT INTO awjf_wegsanierungen.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('GeometryCHLV95_V1.MultiLine',NULL);
INSERT INTO awjf_wegsanierungen.wegsanierungen_wegsanierung_status (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'geplant',0,'geplant',FALSE,NULL);
INSERT INTO awjf_wegsanierungen.wegsanierungen_wegsanierung_status (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ausgefuehrt_und_abgerechnet',1,'ausgefuehrt und abgerechnet',FALSE,NULL);
INSERT INTO awjf_wegsanierungen.wegsanierungen_wegsanierung_status (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'unklar',2,'unklar',FALSE,NULL);
INSERT INTO awjf_wegsanierungen.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('linestructure',NULL,'multiline_lines','ch.ehi.ili2db.foreignKey','multiline');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('linestructure',NULL,'line','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('linestructure',NULL,'line','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('linestructure',NULL,'line','ch.ehi.ili2db.coordDimension','2');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('linestructure',NULL,'line','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('linestructure',NULL,'line','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('linestructure',NULL,'line','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('linestructure',NULL,'line','ch.ehi.ili2db.srid','2056');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('wegsanierungen_wegsanierung',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('wegsanierungen_wegsanierung',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('wegsanierungen_wegsanierung',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('wegsanierungen_wegsanierung',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('wegsanierungen_wegsanierung',NULL,'geometrie','ch.ehi.ili2db.geomType','MULTILINESTRING');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('wegsanierungen_wegsanierung',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('wegsanierungen_wegsanierung',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('wegsanierungen_wegsanierung','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('wegsanierungen_wegsanierung_status','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('multiline','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('linestructure','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('Units-20120220.ili','2.3','Units','!! File Units.ili Release 2012-02-20

INTERLIS 2.3;

!! 2012-02-20 definition of "Bar [bar]" corrected
!!@precursorVersion = 2005-06-06

CONTRACTED TYPE MODEL Units (en) AT "http://www.interlis.ch/models"
  VERSION "2012-02-20" =

  UNIT
    !! abstract Units
    Area (ABSTRACT) = (INTERLIS.LENGTH*INTERLIS.LENGTH);
    Volume (ABSTRACT) = (INTERLIS.LENGTH*INTERLIS.LENGTH*INTERLIS.LENGTH);
    Velocity (ABSTRACT) = (INTERLIS.LENGTH/INTERLIS.TIME);
    Acceleration (ABSTRACT) = (Velocity/INTERLIS.TIME);
    Force (ABSTRACT) = (INTERLIS.MASS*INTERLIS.LENGTH/INTERLIS.TIME/INTERLIS.TIME);
    Pressure (ABSTRACT) = (Force/Area);
    Energy (ABSTRACT) = (Force*INTERLIS.LENGTH);
    Power (ABSTRACT) = (Energy/INTERLIS.TIME);
    Electric_Potential (ABSTRACT) = (Power/INTERLIS.ELECTRIC_CURRENT);
    Frequency (ABSTRACT) = (INTERLIS.DIMENSIONLESS/INTERLIS.TIME);

    Millimeter [mm] = 0.001 [INTERLIS.m];
    Centimeter [cm] = 0.01 [INTERLIS.m];
    Decimeter [dm] = 0.1 [INTERLIS.m];
    Kilometer [km] = 1000 [INTERLIS.m];

    Square_Meter [m2] EXTENDS Area = (INTERLIS.m*INTERLIS.m);
    Cubic_Meter [m3] EXTENDS Volume = (INTERLIS.m*INTERLIS.m*INTERLIS.m);

    Minute [min] = 60 [INTERLIS.s];
    Hour [h] = 60 [min];
    Day [d] = 24 [h];

    Kilometer_per_Hour [kmh] EXTENDS Velocity = (km/h);
    Meter_per_Second [ms] = 3.6 [kmh];
    Newton [N] EXTENDS Force = (INTERLIS.kg*INTERLIS.m/INTERLIS.s/INTERLIS.s);
    Pascal [Pa] EXTENDS Pressure = (N/m2);
    Joule [J] EXTENDS Energy = (N*INTERLIS.m);
    Watt [W] EXTENDS Power = (J/INTERLIS.s);
    Volt [V] EXTENDS Electric_Potential = (W/INTERLIS.A);

    Inch [in] = 2.54 [cm];
    Foot [ft] = 0.3048 [INTERLIS.m];
    Mile [mi] = 1.609344 [km];

    Are [a] = 100 [m2];
    Hectare [ha] = 100 [a];
    Square_Kilometer [km2] = 100 [ha];
    Acre [acre] = 4046.873 [m2];

    Liter [L] = 1 / 1000 [m3];
    US_Gallon [USgal] = 3.785412 [L];

    Angle_Degree = 180 / PI [INTERLIS.rad];
    Angle_Minute = 1 / 60 [Angle_Degree];
    Angle_Second = 1 / 60 [Angle_Minute];

    Gon = 200 / PI [INTERLIS.rad];

    Gram [g] = 1 / 1000 [INTERLIS.kg];
    Ton [t] = 1000 [INTERLIS.kg];
    Pound [lb] = 0.4535924 [INTERLIS.kg];

    Calorie [cal] = 4.1868 [J];
    Kilowatt_Hour [kWh] = 0.36E7 [J];

    Horsepower = 746 [W];

    Techn_Atmosphere [at] = 98066.5 [Pa];
    Atmosphere [atm] = 101325 [Pa];
    Bar [bar] = 100000 [Pa];
    Millimeter_Mercury [mmHg] = 133.3224 [Pa];
    Torr = 133.3224 [Pa]; !! Torr = [mmHg]

    Decibel [dB] = FUNCTION // 10**(dB/20) * 0.00002 // [Pa];

    Degree_Celsius [oC] = FUNCTION // oC+273.15 // [INTERLIS.K];
    Degree_Fahrenheit [oF] = FUNCTION // (oF+459.67)/1.8 // [INTERLIS.K];

    CountedObjects EXTENDS INTERLIS.DIMENSIONLESS;

    Hertz [Hz] EXTENDS Frequency = (CountedObjects/INTERLIS.s);
    KiloHertz [KHz] = 1000 [Hz];
    MegaHertz [MHz] = 1000 [KHz];

    Percent = 0.01 [CountedObjects];
    Permille = 0.001 [CountedObjects];

    !! ISO 4217 Currency Abbreviation
    USDollar [USD] EXTENDS INTERLIS.MONEY;
    Euro [EUR] EXTENDS INTERLIS.MONEY;
    SwissFrancs [CHF] EXTENDS INTERLIS.MONEY;

END Units.

','2021-09-02 11:27:13.043');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part1_GEOMETRY_V1.ili','2.3','GeometryCHLV03_V1{ INTERLIS CoordSys Units} GeometryCHLV95_V1{ INTERLIS CoordSys Units}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-0830
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART I -- GEOMETRY
   - Package GeometryCHLV03
   - Package GeometryCHLV95
*/

!! ########################################################################

!! Version    | Who   | Modification
!!------------------------------------------------------------------------------
!! 2015-02-20 | KOGIS | WITHOUT OVERLAPS added (line 57, 58, 65 and 66)
!! 2015-11-12 | KOGIS | WITHOUT OVERLAPS corrected (line 57 and 58)
!! 2017-11-27 | KOGIS | Meta-Attributes @furtherInformation adapted and @CRS added (line 31, 44 and 50)
!! 2017-12-04 | KOGIS | Meta-Attribute @CRS corrected

!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
TYPE MODEL GeometryCHLV03_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2017-12-04" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS Units;
  IMPORTS CoordSys;

  REFSYSTEM BASKET BCoordSys ~ CoordSys.CoordsysTopic
    OBJECTS OF GeoCartesian2D: CHLV03
    OBJECTS OF GeoHeight: SwissOrthometricAlt;

  DOMAIN
    !!@CRS=EPSG:21781
    Coord2 = COORD
      460000.000 .. 870000.000 [m] {CHLV03[1]},
       45000.000 .. 310000.000 [m] {CHLV03[2]},
      ROTATION 2 -> 1;

    !!@CRS=EPSG:21781
    Coord3 = COORD
      460000.000 .. 870000.000 [m] {CHLV03[1]},
       45000.000 .. 310000.000 [m] {CHLV03[2]},
        -200.000 ..   5000.000 [m] {SwissOrthometricAlt[1]},
      ROTATION 2 -> 1;

    Surface = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Area = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Line = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord2;
    DirectedLine EXTENDS Line = DIRECTED POLYLINE;
    LineWithAltitude = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    DirectedLineWithAltitude = DIRECTED POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    
    /* minimal overlaps only (2mm) */
    SurfaceWithOverlaps2mm = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;
    AreaWithOverlaps2mm = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;

    Orientation = 0.00000 .. 359.99999 CIRCULAR [Units.Angle_Degree] <Coord2>;

    Accuracy = (cm, cm50, m, m10, m50, vague);
    Method = (measured, sketched, calculated);

    STRUCTURE LineStructure = 
      Line: Line;
    END LineStructure;

    STRUCTURE DirectedLineStructure =
      Line: DirectedLine;
    END DirectedLineStructure;

    STRUCTURE MultiLine =
      Lines: BAG {1..*} OF LineStructure;
    END MultiLine;

    STRUCTURE MultiDirectedLine =
      Lines: BAG {1..*} OF DirectedLineStructure;
    END MultiDirectedLine;

    STRUCTURE SurfaceStructure =
      Surface: Surface;
    END SurfaceStructure;

    STRUCTURE MultiSurface =
      Surfaces: BAG {1..*} OF SurfaceStructure;
    END MultiSurface;

END GeometryCHLV03_V1.

!! ########################################################################

!! Version    | Who   | Modification
!!------------------------------------------------------------------------------
!! 2015-02-20 | KOGIS | WITHOUT OVERLAPS added (line 135, 136, 143 and 144)
!! 2015-11-12 | KOGIS | WITHOUT OVERLAPS corrected (line 135 and 136)
!! 2017-11-27 | KOGIS | Meta-Attributes @furtherInformation adapted and @CRS added (line 109, 122 and 128)
!! 2017-12-04 | KOGIS | Meta-Attribute @CRS corrected

!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
TYPE MODEL GeometryCHLV95_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2017-12-04" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS Units;
  IMPORTS CoordSys;

  REFSYSTEM BASKET BCoordSys ~ CoordSys.CoordsysTopic
    OBJECTS OF GeoCartesian2D: CHLV95
    OBJECTS OF GeoHeight: SwissOrthometricAlt;

  DOMAIN
    !!@CRS=EPSG:2056
    Coord2 = COORD
      2460000.000 .. 2870000.000 [m] {CHLV95[1]},
      1045000.000 .. 1310000.000 [m] {CHLV95[2]},
      ROTATION 2 -> 1;

    !!@CRS=EPSG:2056
    Coord3 = COORD
      2460000.000 .. 2870000.000 [m] {CHLV95[1]},
      1045000.000 .. 1310000.000 [m] {CHLV95[2]},
         -200.000 ..   5000.000 [m] {SwissOrthometricAlt[1]},
      ROTATION 2 -> 1;

    Surface = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Area = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Line = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord2;
    DirectedLine EXTENDS Line = DIRECTED POLYLINE;
    LineWithAltitude = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    DirectedLineWithAltitude = DIRECTED POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    
    /* minimal overlaps only (2mm) */
    SurfaceWithOverlaps2mm = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;
    AreaWithOverlaps2mm = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;

    Orientation = 0.00000 .. 359.99999 CIRCULAR [Units.Angle_Degree] <Coord2>;

    Accuracy = (cm, cm50, m, m10, m50, vague);
    Method = (measured, sketched, calculated);

    STRUCTURE LineStructure = 
      Line: Line;
    END LineStructure;

    STRUCTURE DirectedLineStructure =
      Line: DirectedLine;
    END DirectedLineStructure;

    STRUCTURE MultiLine =
      Lines: BAG {1..*} OF LineStructure;
    END MultiLine;

    STRUCTURE MultiDirectedLine =
      Lines: BAG {1..*} OF DirectedLineStructure;
    END MultiDirectedLine;

    STRUCTURE SurfaceStructure =
      Surface: Surface;
    END SurfaceStructure;

    STRUCTURE MultiSurface =
      Surfaces: BAG {1..*} OF SurfaceStructure;
    END MultiSurface;

END GeometryCHLV95_V1.

!! ########################################################################
','2021-09-02 11:27:13.043');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CoordSys-20151124.ili','2.3','CoordSys','!! File CoordSys.ili Release 2015-11-24

INTERLIS 2.3;

!! 2015-11-24 Cardinalities adapted (line 122, 123, 124, 132, 133, 134, 142, 143,
!!                                   148, 149, 163, 164, 168, 169, 206 and 207)
!!@precursorVersion = 2005-06-16

REFSYSTEM MODEL CoordSys (en) AT "http://www.interlis.ch/models"
  VERSION "2015-11-24" =

  UNIT
    Angle_Degree = 180 / PI [INTERLIS.rad];
    Angle_Minute = 1 / 60 [Angle_Degree];
    Angle_Second = 1 / 60 [Angle_Minute];

  STRUCTURE Angle_DMS_S =
    Degrees: -180 .. 180 CIRCULAR [Angle_Degree];
    CONTINUOUS SUBDIVISION Minutes: 0 .. 59 CIRCULAR [Angle_Minute];
    CONTINUOUS SUBDIVISION Seconds: 0.000 .. 59.999 CIRCULAR [Angle_Second];
  END Angle_DMS_S;

  DOMAIN
    Angle_DMS = FORMAT BASED ON Angle_DMS_S (Degrees ":" Minutes ":" Seconds);
    Angle_DMS_90 EXTENDS Angle_DMS = "-90:00:00.000" .. "90:00:00.000";


  TOPIC CoordsysTopic =

    !! Special space aspects to be referenced
    !! **************************************

    CLASS Ellipsoid EXTENDS INTERLIS.REFSYSTEM =
      EllipsoidAlias: TEXT*70;
      SemiMajorAxis: MANDATORY 6360000.0000 .. 6390000.0000 [INTERLIS.m];
      InverseFlattening: MANDATORY 0.00000000 .. 350.00000000;
      !! The inverse flattening 0 characterizes the 2-dim sphere
      Remarks: TEXT*70;
    END Ellipsoid;

    CLASS GravityModel EXTENDS INTERLIS.REFSYSTEM =
      GravityModAlias: TEXT*70;
      Definition: TEXT*70;
    END GravityModel;

    CLASS GeoidModel EXTENDS INTERLIS.REFSYSTEM =
      GeoidModAlias: TEXT*70;
      Definition: TEXT*70;
    END GeoidModel;


    !! Coordinate systems for geodetic purposes
    !! ****************************************

    STRUCTURE LengthAXIS EXTENDS INTERLIS.AXIS =
      ShortName: TEXT*12;
      Description: TEXT*255;
    PARAMETER
      Unit (EXTENDED): NUMERIC [INTERLIS.LENGTH];
    END LengthAXIS;

    STRUCTURE AngleAXIS EXTENDS INTERLIS.AXIS =
      ShortName: TEXT*12;
      Description: TEXT*255;
    PARAMETER
      Unit (EXTENDED): NUMERIC [INTERLIS.ANGLE];
    END AngleAXIS;

    CLASS GeoCartesian1D EXTENDS INTERLIS.COORDSYSTEM =
      Axis (EXTENDED): LIST {1} OF LengthAXIS;
    END GeoCartesian1D;

    CLASS GeoHeight EXTENDS GeoCartesian1D =
      System: MANDATORY (
        normal,
        orthometric,
        ellipsoidal,
        other);
      ReferenceHeight: MANDATORY -10000.000 .. +10000.000 [INTERLIS.m];
      ReferenceHeightDescr: TEXT*70;
    END GeoHeight;

    ASSOCIATION HeightEllips =
      GeoHeightRef -- {*} GeoHeight;
      EllipsoidRef -- {1} Ellipsoid;
    END HeightEllips;

    ASSOCIATION HeightGravit =
      GeoHeightRef -- {*} GeoHeight;
      GravityRef -- {1} GravityModel;
    END HeightGravit;

    ASSOCIATION HeightGeoid =
      GeoHeightRef -- {*} GeoHeight;
      GeoidRef -- {1} GeoidModel;
    END HeightGeoid;

    CLASS GeoCartesian2D EXTENDS INTERLIS.COORDSYSTEM =
      Definition: TEXT*70;
      Axis (EXTENDED): LIST {2} OF LengthAXIS;
    END GeoCartesian2D;

    CLASS GeoCartesian3D EXTENDS INTERLIS.COORDSYSTEM =
      Definition: TEXT*70;
      Axis (EXTENDED): LIST {3} OF LengthAXIS;
    END GeoCartesian3D;

    CLASS GeoEllipsoidal EXTENDS INTERLIS.COORDSYSTEM =
      Definition: TEXT*70;
      Axis (EXTENDED): LIST {2} OF AngleAXIS;
    END GeoEllipsoidal;

    ASSOCIATION EllCSEllips =
      GeoEllipsoidalRef -- {*} GeoEllipsoidal;
      EllipsoidRef -- {1} Ellipsoid;
    END EllCSEllips;


    !! Mappings between coordinate systems
    !! ***********************************

    ASSOCIATION ToGeoEllipsoidal =
      From -- {0..*} GeoCartesian3D;
      To -- {0..*} GeoEllipsoidal;
      ToHeight -- {0..*} GeoHeight;
    MANDATORY CONSTRAINT
      ToHeight -> System == #ellipsoidal;
    MANDATORY CONSTRAINT
      To -> EllipsoidRef -> Name == ToHeight -> EllipsoidRef -> Name;
    END ToGeoEllipsoidal;

    ASSOCIATION ToGeoCartesian3D =
      From2 -- {0..*} GeoEllipsoidal;
      FromHeight-- {0..*} GeoHeight;
      To3 -- {0..*} GeoCartesian3D;
    MANDATORY CONSTRAINT
      FromHeight -> System == #ellipsoidal;
    MANDATORY CONSTRAINT
      From2 -> EllipsoidRef -> Name == FromHeight -> EllipsoidRef -> Name;
    END ToGeoCartesian3D;

    ASSOCIATION BidirectGeoCartesian2D =
      From -- {0..*} GeoCartesian2D;
      To -- {0..*} GeoCartesian2D;
    END BidirectGeoCartesian2D;

    ASSOCIATION BidirectGeoCartesian3D =
      From -- {0..*} GeoCartesian3D;
      To2 -- {0..*} GeoCartesian3D;
      Precision: MANDATORY (
        exact,
        measure_based);
      ShiftAxis1: MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];
      ShiftAxis2: MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];
      ShiftAxis3: MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];
      RotationAxis1: Angle_DMS_90;
      RotationAxis2: Angle_DMS_90;
      RotationAxis3: Angle_DMS_90;
      NewScale: 0.000001 .. 1000000.000000;
    END BidirectGeoCartesian3D;

    ASSOCIATION BidirectGeoEllipsoidal =
      From4 -- {0..*} GeoEllipsoidal;
      To4 -- {0..*} GeoEllipsoidal;
    END BidirectGeoEllipsoidal;

    ASSOCIATION MapProjection (ABSTRACT) =
      From5 -- {0..*} GeoEllipsoidal;
      To5 -- {0..*} GeoCartesian2D;
      FromCo1_FundPt: MANDATORY Angle_DMS_90;
      FromCo2_FundPt: MANDATORY Angle_DMS_90;
      ToCoord1_FundPt: MANDATORY -10000000 .. +10000000 [INTERLIS.m];
      ToCoord2_FundPt: MANDATORY -10000000 .. +10000000 [INTERLIS.m];
    END MapProjection;

    ASSOCIATION TransverseMercator EXTENDS MapProjection =
    END TransverseMercator;

    ASSOCIATION SwissProjection EXTENDS MapProjection =
      IntermFundP1: MANDATORY Angle_DMS_90;
      IntermFundP2: MANDATORY Angle_DMS_90;
    END SwissProjection;

    ASSOCIATION Mercator EXTENDS MapProjection =
    END Mercator;

    ASSOCIATION ObliqueMercator EXTENDS MapProjection =
    END ObliqueMercator;

    ASSOCIATION Lambert EXTENDS MapProjection =
    END Lambert;

    ASSOCIATION Polyconic EXTENDS MapProjection =
    END Polyconic;

    ASSOCIATION Albus EXTENDS MapProjection =
    END Albus;

    ASSOCIATION Azimutal EXTENDS MapProjection =
    END Azimutal;

    ASSOCIATION Stereographic EXTENDS MapProjection =
    END Stereographic;

    ASSOCIATION HeightConversion =
      FromHeight -- {0..*} GeoHeight;
      ToHeight -- {0..*} GeoHeight;
      Definition: TEXT*70;
    END HeightConversion;

  END CoordsysTopic;

END CoordSys.

','2021-09-02 11:27:13.043');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('SO_AWJF_Wegsanierungen_20170629.ili','2.3','SO_AWJF_Wegsanierungen_20170629{ GeometryCHLV95_V1}','INTERLIS 2.3;
!!============================================================================== 
!!@ File = "SO_AWJF_Wegsanierungen_20170629.ili"; 
!!@ Title = "Wegsanierungen"; 
!!@ shortDescription = "Wegsanierungen im Kanton Solothurn"; 
!!@ Issuer = "http://www.agi.so.ch"; 
!!@ technicalContact = "mailto:agi@so.ch"; 
!!@ furtherInformation = ""; 
!!@ kGeoiV_ID = ""; 
!!  Erfassungsmodell;
!!  Compiler-Version = "4.7.3-20170524"; 
!!------------------------------------------------------------------------------ 
!! Version    | wer | Änderung 
!!------------------------------------------------------------------------------ 
!! 2017-02-01 | Noëmi Sturm  | Erstfassung 
!! 2017-02-07 | Noëmi Sturm  | diverse kleinere Anpassungen
!! 2017-02-08 | Noëmi Sturm  | Anpassung der Attributnamen
!! 2017-03-29 | Noëmi Sturm  | Status als Enumeration
!! 2017-06-29 | Noëmi Sturm  | Beschreibungsänderungen
!!============================================================================== 

MODEL SO_AWJF_Wegsanierungen_20170629 (de)
AT "http://www.geo.so.ch/models/AWJF"
VERSION "2017-06-29"  =
  IMPORTS GeometryCHLV95_V1;

  TOPIC Wegsanierungen =
    OID AS INTERLIS.UUIDOID;

    CLASS Wegsanierung =
      /** automatische ID der Wegsanierung (AWJF intern)
       */
      ID_Wegsanierung : MANDATORY 0 .. 1000000000;
      /** Projektname
       */
      Projekt : TEXT*200;
      /** Projektnummer
       */
      Projekt_Nr : TEXT*200;
      /** Wegname, Abschnitt, Kennzeichnung
       */
      Name : TEXT*200;
      /** Laenge relevant fuer Beitrag in m
       */
      Laenge_Beitrag : 0.00 .. 1000000000.00;
      /** Zuordnung zu Gesuchsteller
       */
      FID_Ges_Nr : 0 .. 1000000000;
      /** Abrechnungsjahr (nicht gleich Ausfuehrung)
       */
      Jahr : INTERLIS.GregorianYear;
      /** beitragsberechtigte Kosten in Fr.
       */
      Kosten : 0.00 .. 1000000000.00;
      /** Beitraege Kanton in Fr.
       */
      Beitrag : 0.00 .. 1000000000.00;
      /** Kommentar
       */
      Bemerkung : TEXT*200;
      /** Reserve ID fuer unvorhergesehene Zuordnung
       */
      ID_Reserve : 0 .. 1000000000;
      /** Geometrie der Wegsanierung
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.MultiLine;
      /** Status
       */
      Status : MANDATORY (
        geplant,
        ausgefuehrt_und_abgerechnet,
        unklar
      );
    END Wegsanierung;

  END Wegsanierungen;

END SO_AWJF_Wegsanierungen_20170629.
','2021-09-02 11:27:13.043');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createMetaInfo','True');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiPointTrafo','coalesce');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.nameOptimization','topic');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiSurfaceTrafo','coalesce');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.maxSqlNameLength','60');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.beautifyEnumDispName','underscore');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiLineTrafo','coalesce');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.jsonTrafo','coalesce');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.StrokeArcs','enable');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKey','yes');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uniqueConstraints','create');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.sqlgen.createGeomIndex','True');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uuidDefaultValue','uuid_generate_v4()');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsAuthority','EPSG');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.arrayTrafo','coalesce');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsCode','2056');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKeyIndex','yes');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createEnumDefs','multiTable');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.inheritanceTrafo','smart1');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.sender','ili2pg-4.3.1-23b1f79e8ad644414773bb9bd1a97c8c265c5082');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.numericCheckConstraints','create');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.localisedTrafo','expand');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.interlis.ili2c.ilidirs','http://models.geo.admin.ch;http://geo.so.ch/models');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('SO_AWJF_Wegsanierungen_20170629','technicalContact','mailto:agi@so.ch');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('SO_AWJF_Wegsanierungen_20170629','Issuer','http://www.agi.so.ch');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('SO_AWJF_Wegsanierungen_20170629','shortDescription','Wegsanierungen im Kanton Solothurn');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('SO_AWJF_Wegsanierungen_20170629','File','SO_AWJF_Wegsanierungen_20170629.ili');
INSERT INTO awjf_wegsanierungen.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('SO_AWJF_Wegsanierungen_20170629','Title','Wegsanierungen');
