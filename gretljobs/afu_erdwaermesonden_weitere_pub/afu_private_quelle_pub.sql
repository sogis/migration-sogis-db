SELECT
    quelle_id,
    ST_Area(geometrie) AS area,
    ST_Perimeter(geometrie) AS perimeter,
    geometrie
FROM
    afu_erdwaermesonden_weitere_v1.private_quelle
;
