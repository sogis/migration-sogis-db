SELECT
    geometrie, 
    typ,
    typ.dispname AS typ_txt
FROM 
    afu_geologie.geologie_tektonische_strukturen AS tektonische_strukturen
    LEFT JOIN afu_geologie.geologie_tektonische_strukturen_typ AS typ
    ON tektonische_strukturen.typ = typ.ilicode
;
