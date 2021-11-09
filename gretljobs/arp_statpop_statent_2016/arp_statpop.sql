SELECT
    "STATDATE" AS statdate,
    "RECORD" AS record,
    "STATYEAR" AS statyear,
    "POPULATIONTYPE" AS populationtype,
    "CLASSAGEFIVEYEARS" AS classagefiveyears,
    "NATIONALITYCATEGORY" AS nationalitycategory,
    "GEOCORDE" AS geocorde,
    "GEOCORDN" AS geocordn,
    "zone" AS azone,
    gem_bfs,
    wkb_geometry AS geometrie
FROM
    statpop_restricted."statpop_2016_SO"
;
