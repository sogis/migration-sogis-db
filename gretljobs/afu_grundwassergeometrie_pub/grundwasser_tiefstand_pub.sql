SELECT
    geometrie,
    maechtigkeit,
    maechtigkeit.dispname as maechtigkeit_txt
FROM
    afu_grundwassergeometrie.grundwassrgmtrien_grundwasser_tiefstand AS grundwasser
    LEFT JOIN afu_grundwassergeometrie.grundwsrgmtrien_grundwasser_maechtigkeit AS maechtigkeit
    ON grundwasser.maechtigkeit = maechtigkeit.ilicode
;
