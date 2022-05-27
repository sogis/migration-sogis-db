SELECT
    ogc_fid AS t_id,
    empfte,
    emptot,
    meter_x,
    meter_y,
    "zone" AS azone,
    gem_bfs,
    noga08,
    wkb_geometry AS geometrie
FROM
    statpop_restricted.statent2010
;
