SELECT 
    t_id, 
    geometrie,     
    typ,
    typ.dispname as typ_txt
FROM 
    afu_geologie.geologie_karstformen AS karstformen
    LEFT JOIN afu_geologie.geologie_karstformen_typ AS typ
    ON karstformen.typ = typ.ilicode
;
