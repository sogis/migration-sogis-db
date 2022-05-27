SELECT
    sturz,
    hangmure,
    grs AS gerinne,
    lawine,
    andere_kt,
    ST_GeometryN(wkb_geometry, 1) AS geometrie
FROM
    awjf_work.silvaprotecteinteilig_grs_kor
;
