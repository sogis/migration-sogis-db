UPDATE awjf_waldplan_bestandeskarte_v1.waldplan_bestandeskarte
    SET geometrie = ST_RemoveRepeatedPoints(ST_ReducePrecision(ST_Buffer(geometrie, 0.02), 0.01), 0.001)
;

