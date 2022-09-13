UPDATE afu_immissionskarten_v1.luftbelastung_2010_2020
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001), 0.001))
;
