SELECT
    streckentyp,
    passagieranzahl_pro_werktag_2015,
    passagieranzahl_in_abendspitzen_2015,
    passagieranzahl_pro_werktag_2040,
    passagieranzahl_in_abendspitzen_2040,
    geometrie
FROM
    avt_gesamtverkehrsmodell2015_pub.gvm_so_2015_oev_passagiere
WHERE
    ST_Length(geometrie) > 2
;
