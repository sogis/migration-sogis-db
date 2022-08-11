UPDATE awjf_nullflaechen_v1.nullflaeche
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001)))
;
