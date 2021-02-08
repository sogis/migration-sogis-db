SELECT
    haltestellenname,
    didok,
    verkehrsmittel,
    kategorie,
    katgorie_code.dispname AS kategorie_txt,
    geometrie
FROM
    avt_oeffentlicher_verkehr.oeffntlchr_vrkehr_haltestelle
    LEFT JOIN avt_oeffentlicher_verkehr.oeffntlr_vrkehr_haltestelle_kategorie AS katgorie_code
    ON kategorie = katgorie_code.ilicode
;
