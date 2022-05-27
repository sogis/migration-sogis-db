SELECT
    wkb_geometry AS geometrie,
    artcode,
    artname,
    rl_status AS rote_liste_status,
    nhv AS schutzstatus_nhv,
    prioritaet AS schutzprioritaet,
    kanton,
    (substring(funddatum from 7)||'-'||substring(funddatum from 4 for 2)||'-'||substring(funddatum from 1 for 2))::date AS funddatum,
    substrat,
    habitat
    
FROM
    public.arp_nl_flechten_t
WHERE
    archive = 0
;
