SELECT
    ogc_fid AS t_id,
    sturz,
    hangmure,
    grs AS gerinne,
    lawine,
    andere_kt,
    wkb_geometry AS geometrie
FROM
    awjf_work.silvaprotecteinteilig_rutsch_kor
;
