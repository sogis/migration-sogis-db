SELECT
    korrid_nr AS nummer,
    zustand,
    wkb_geometry AS geometrie
FROM
    awjf.wildtierkorridor
WHERE
    archive = 0
;
