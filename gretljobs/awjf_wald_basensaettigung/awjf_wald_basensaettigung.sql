SELECT
    bsat_code AS basensaettigungs_code,
    wkb_geometry AS geometrie
FROM
    awjf.basensaettigung
WHERE
    archive = 0
;
