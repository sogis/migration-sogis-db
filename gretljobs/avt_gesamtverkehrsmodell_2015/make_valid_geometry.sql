UPDATE avt_gesamtverkehrsmodell_2015_v1.oev_passagiere
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001)))
;
