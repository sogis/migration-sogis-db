UPDATE afu_erdwaermesonden_weitere.erdwarmsndn_wtere_private_quelle
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001)))
;

UPDATE afu_erdwaermesonden_weitere.erdwarmsndn_wtere_abfrageperimeter
   SET geometrie = ST_GeometryN(ST_CollectionExtract(ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001))), 3), 1)
;
