UPDATE awjf_silvaprotect_v1.silvaprotect_andere_kt
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001)))

;
UPDATE awjf_silvaprotect_v1.silvaprotect_gerinne
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001)))
;
UPDATE awjf_silvaprotect_v1.silvaprotect_lawine
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001)))
;
UPDATE awjf_silvaprotect_v1.silvaprotect_rutschung
   SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001)))
;
UPDATE awjf_silvaprotect_v1.silvaprotect_steinschlag
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001)))
;
