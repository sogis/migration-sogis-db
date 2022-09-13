SELECT
    CASE
        WHEN ST_GeometryType(wkb_geometry) <> 'ST_MultiPolygon'
            THEN ST_Multi(wkb_geometry)
        ELSE
            wkb_geometry
    END AS geometrie,
    CASE
        WHEN fk = 1 OR fk = 2
            THEN 'Region Solothurn'
        WHEN fk = 3 OR fk = 4
            THEN 'Thal-Gäu'
        WHEN fk = 5
            THEN 'Olten-Gösgen'
        WHEN fk = 6
            THEN 'Dorneck-Thierstein'
    END AS forstkreis,
    CASE
        WHEN fr = 1
            THEN 'Grenchen'
        WHEN fr = 2
            THEN 'Leberberg'
        WHEN fr = 3
            THEN 'Bucheggberg'
        WHEN fr = 4
            THEN 'Wasseramt'
        WHEN fr = 5
            THEN 'Solothurn'
        WHEN fr = 6
            THEN 'Vorders Thal'
        WHEN fr = 7
            THEN 'Laupersdorf / Matzendorf'
        WHEN fr = 8
            THEN 'Hinteres Thal'
        WHEN fr = 9
            THEN 'Roggen'
        WHEN fr = 10
            THEN 'Oberes Gäu'
        WHEN fr = 11
            THEN 'Mittleres Gäu'
        WHEN fr = 13
            THEN 'Untergäu'
        WHEN fr = 14 OR fr = 15
            THEN 'Unterer Hauenstein'
        WHEN fr = 16 OR fr = 17 OR fr = 18
            THEN 'Niederamt'
        WHEN fr = 19
            THEN 'Dorneckberg Nord'
        WHEN fr = 20 OR fr = 22 OR fr = 23
            THEN 'Schwarzbubenland'
        WHEN fr = 21
            THEN 'Am Blauen'
        WHEN fr = 24
            THEN 'Thierstein West / Laufental'
    END AS forstrevier,
    CASE
        WHEN name = ''
            THEN NULL
        ELSE name
    END AS schutzwald_nr1,
    name_2 AS schutzwald_nr2,
    CASE
        WHEN sturz = 0
            THEN false
        WHEN sturz = 1
            THEN true
    END AS sturz,
    CASE
        WHEN rutsch = 0
            THEN false
        WHEN rutsch = 1
            THEN true
    END AS rutsch,
    CASE
        WHEN grs = 0
            THEN false
        WHEN grs = 1
            THEN true
    END AS gerinnerelevante_prozesse,
    CASE
        WHEN lawine = 0
            THEN false
        WHEN lawine = 1
            THEN true
    END AS lawine,
    CASE
        WHEN anderekt = 0
            THEN false
        WHEN anderekt = 1
            THEN true
    END AS andere_kt,
    CASE
        WHEN obj_kat = 2.2
            THEN 'Verkehrswege_kommunal_Hofzufahrt'
        WHEN obj_kat = 2.3
            THEN 'Einzelgebaeude'
        WHEN obj_kat = 3.1
            THEN 'Kantonsstrassen_Bahnlinien'
        WHEN obj_kat = 3.2
            THEN 'Geschlossene_Siedlungen'
        WHEN obj_kat = 3.3
            THEN 'Sonderobjekte'
    END AS objektkategorie,
    CASE
        WHEN schaden_po = 'Gemeienden Unterleberberg'
            THEN 'Gemeinden Unterleberberg'
        ELSE schaden_po
    END AS schadenpotential,
    CASE
        WHEN h_gef_pot = 1
            THEN 'Sturz'
        WHEN h_gef_pot = 2
            THEN 'Rutschung'
        WHEN h_gef_pot = 3
            THEN 'gerinnerelevante_Prozesse'
         WHEN h_gef_pot = 4
            THEN 'Lawine'
    END AS hauptgefahrenpotential,
    CASE
        WHEN igef_pot = 1
            THEN 'schwach'
        WHEN igef_pot = 2
            THEN 'mittel'
        WHEN igef_pot = 3
            THEN 'stark'
    END AS intensitaet_geschaetzt,
    CASE
        WHEN bemerkunge = ''
            THEN NULL
        ELSE bemerkunge
    END AS bemerkungen,
    gem_name AS gemeinde,
    flaeche
FROM
    awjf.sw_funktion_ar
WHERE
    archive = 0
;
