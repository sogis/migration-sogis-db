UPDATE awa_netzbetreiber_strom.netzbetrebr_strom_ebene_3
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(ST_Buffer(geometrie,0.0), 0.001)))
;
UPDATE  awa_netzbetreiber_strom.netzbetrebr_strom_ebene_5
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(ST_Buffer(geometrie,0.0), 0.001)))
;
UPDATE  awa_netzbetreiber_strom.netzbetrebr_strom_ebene_7
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001)))
;
