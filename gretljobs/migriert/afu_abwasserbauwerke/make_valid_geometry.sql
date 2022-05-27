UPDATE afu_abwasserbauwerke_v1.leitungen
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001)))
;
