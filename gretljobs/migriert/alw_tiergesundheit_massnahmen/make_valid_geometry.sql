UPDATE alw_tiergesundheit_massnahmen.massnhmnrgsndheit_bienensperrgebiet
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001)))
;
