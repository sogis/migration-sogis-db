SELECT
    wkb_geometry AS geometrie,
    korrid_nr AS nummer,
    lower(zustand) AS zustand,
    CASE
        WHEN korrid_nr = 1
            THEN 'Riemberg-Lommiswil'
        WHEN korrid_nr = 2
            THEN 'Biberist'
        WHEN korrid_nr = 3
            THEN 'Äusseres Wasseramt'
        WHEN korrid_nr = 4
            THEN 'Galmis'
        WHEN korrid_nr = 5
            THEN 'Riedholz-Günsberg'
        WHEN korrid_nr = 6
            THEN 'Deitingen'
        WHEN korrid_nr = 7
            THEN 'Bolken-Aeschi'
        WHEN korrid_nr = 8
            THEN 'Äussere Klus Balsthal'
        WHEN korrid_nr = 9
            THEN 'Kestenholz'
        WHEN korrid_nr = 10
            THEN 'Aaretränki-Fulenbach'
        WHEN korrid_nr = 11
            THEN 'Born Rutingen'
        WHEN korrid_nr = 12
            THEN 'Obergösgen'
        WHEN korrid_nr = 13
            THEN 'Eppenberg-Wöschnau'
        WHEN korrid_nr = 14
            THEN 'Messen'
        WHEN korrid_nr = 15
            THEN 'Aetingen'
        WHEN korrid_nr = 16
            THEN 'Bettlach-Altreu' 
        WHEN korrid_nr = 17
            THEN 'Feldbrunnen St. Niklaus'
        WHEN korrid_nr = 18
            THEN 'Burgäschisee'
        WHEN korrid_nr = 19
            THEN 'Hüniken'
        WHEN korrid_nr = 20
            THEN 'Laupersdorf Wilkmatt'
        WHEN korrid_nr = 21
            THEN 'Laupersdorf Moosmatten'
        WHEN korrid_nr = 22
            THEN 'Mümliswil Lobisei'
        WHEN korrid_nr = 23
            THEN 'Fehren'
        WHEN korrid_nr = 25
            THEN 'Metzerlen'
        WHEN korrid_nr = 26
            THEN 'Breitenbach'
        WHEN korrid_nr = 27
            THEN 'Schloss Thierstein'
        WHEN korrid_nr = 28
            THEN 'Stierenbaan'
        WHEN korrid_nr = 29
            THEN 'Rickenbach'
        WHEN korrid_nr = 30
            THEN 'Wangen'
        WHEN korrid_nr = 31
            THEN 'Walterswil'
        WHEN korrid_nr = 32
            THEN 'Gugenfeld'
    END AS aname,
    NULL AS bedeutung,
    NULL AS zielart,
    NULL AS objektblatt
FROM
    awjf.wildtierkorridor
WHERE
    archive = 0
;
