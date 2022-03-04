SELECT
    wkb_geometry AS geometrie,
    genus,
    species,
    autor,
    infra,
    iautor,
    cfbest AS cf_bestimmung,
    taxonno AS taxon_nummer,
    bkonv AS berner_konvention,
    nhv91 AS nhv_verordnung,
    rl04stat AS iucn_status_rote_liste,
    rl04krit AS iucn_kriterien_rote_liste,
    rl_eur AS status_rote_liste_europa,
    rl_welt AS status_rote_liste_welt,
    belegno AS belegnummer,
    sname AS sammler_name_herbar,
    sammlernum AS sammler_nummer,
    name AS sammler_name,
    sammeldatu AS sammeldatum,
    herbarium,
    standort,
    substrat,
    asp_no AS artenschutzprojekt_nummer,
    kanton,
    flaechenno AS flaechennummer,
    abweichung,
    natraum AS naturraum_nummer,
    standardno AS standard_beleg
FROM
    public.arp_nl_moose_t
WHERE
    wkb_geometry IS NOT NULL
AND
    archive = 0
;
