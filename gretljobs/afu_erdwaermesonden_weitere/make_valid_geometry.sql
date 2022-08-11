UPDATE afu_erdwaermesonden_weitere_v1.private_quelle
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001)))
;
