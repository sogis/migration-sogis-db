SELECT
    geometrie,
    maechtigkeit,
    maechtigkeit.dispname as maechtigkeit_txt
FROM
    afu_grundwassergeometrie_v1.grundwassrgmtrien_grundwasser_maechtigkeit AS grundwasser
    LEFT JOIN afu_grundwassergeometrie_v1.grundwsrgmtrien_grundwasser_maechtigkeit AS maechtigkeit
    ON grundwasser.maechtigkeit = maechtigkeit.ilicode
;
