SELECT
    wkb_geometry AS geometrie,
    bgk AS baugrundklasse,
    CASE
        WHEN methode = 'Auto:CDE/Geol:E'
            THEN 'Auto:CDE/Geol.:E'
        WHEN methode = 'Auto:CD/Geol:C'
            THEN 'Auto:CD/Geol.:C'
        WHEN (methode = 'GW-Mächt+Flur+Geol' OR methode = 'GW-Mächtigk.+Flur+Geol')
            THEN 'GW-Mächtigk.+Flur+Geol.'
         WHEN (methode = 'GW_Mächtigk./Geol.' OR methode = 'GW-Mächtigk./Geol.')
            THEN 'GW-Mächtigk./Geologe'
        ELSE
            methode
    END AS methode,
    shapefile,
    zuordnung,
    agd AS hilfsattribut,
    CASE
        WHEN gz = 1
            THEN 'Kantonsflaeche_ohne_Thierstein_Dorneck'
        WHEN gz = 2
            THEN 'Thierstein_Dorneck'
    END AS gefaehrdungszone
FROM
    public.afu_baugrundklassen
WHERE
    archive = 0
;
