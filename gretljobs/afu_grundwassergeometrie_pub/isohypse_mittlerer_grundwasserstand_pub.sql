SELECT
    geometrie,
    kurventyp,
    kurventyp.dispname::smallint as kurventyp_txt,
    kote,
    bearbeiter,
    erfassung
FROM
    afu_grundwassergeometrie.grundwassrgmtrien_isohypse_hoechster_grundwasserstand AS isohypse
    LEFT JOIN afu_grundwassergeometrie.grundwsrgmtrien_isohypse_kurventyp AS kurventyp
    ON isohypse.kurventyp = kurventyp.ilicode
;
