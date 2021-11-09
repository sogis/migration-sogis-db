SELECT
    '2013-12-31'::date AS statdate,
    record,
    statyear,
    populationtype,
    classagefiveyears,
    nationalitycategory,
    geocorde,
    geocordn,
    "zone" AS azone,
    gem_bfs,
    wkb_geometry AS geometrie
FROM
    statpop_restricted.statpop_2013
;
