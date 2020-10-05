SELECT 
    geometrie, 
    netzgebiet_name, 
    betreiber,  
    konflikt,
    konflikt_code.dispname AS konflikt_txt
FROM 
    awa_netzbetreiber_strom.netzbetrebr_strom_ebene_5
    LEFT JOIN awa_netzbetreiber_strom.netzbtrbr_strom_netzbetreiber_konflikt AS konflikt_code
    ON konflikt = konflikt_code.ilicode
;
