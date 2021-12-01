ALTER TABLE afu_baugrundklassen_pub_v1.baugrundklasse ADD baugrundklasse_txt varchar(200) NOT NULL
;
COMMENT ON COLUMN afu_baugrundklassen_pub_v1.baugrundklasse.baugrundklasse_txt IS 'Baugrundklasse'
;
ALTER TABLE afu_baugrundklassen_pub_v1.baugrundklasse ADD gefaehrdungszone_txt varchar(50) NOT NULL
;
COMMENT ON COLUMN afu_baugrundklassen_pub_v1.baugrundklasse.gefaehrdungszone_txt IS 'Erdbebengefährdungszone'
;
