SELECT
    statdate,
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
    statpop_restricted.statpop_2011
;
