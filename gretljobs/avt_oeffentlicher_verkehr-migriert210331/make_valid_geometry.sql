UPDATE avt_oeffentlicher_verkehr.oeffntlchr_vrkehr_netz
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001)))
;
