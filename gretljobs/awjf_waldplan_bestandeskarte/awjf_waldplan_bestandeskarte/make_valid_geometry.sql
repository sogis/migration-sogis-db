UPDATE awjf_waldplan_bestandeskarte_v1.waldplan_bestandeskarte
    --SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001), 0.001))
    SET geometrie = (ST_Dump(ST_ReducePrecision(ST_Buffer(geometrie, 0.02), 0.01))).geom
;

