UPDATE afu_immissionskarten_pub_v1.luftbelastung_2010_2020
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001), 0.001))
    --SET geometrie = (ST_Dump(ST_ReducePrecision(ST_Buffer(geometrie, 0.02), 0.01))).geom
;
