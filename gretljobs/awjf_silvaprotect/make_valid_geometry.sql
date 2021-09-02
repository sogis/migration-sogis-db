UPDATE awjf_silvaprotect.silvaprotect_andere_kt
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(ST_Buffer(geometrie,0.0), 0.001)))
;
UPDATE awjf_silvaprotect.silvaprotect_gerinne
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(ST_Buffer(geometrie,0.0), 0.001)))
;
UPDATE awjf_silvaprotect.silvaprotect_lawine
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001)))
;
UPDATE awjf_silvaprotect.silvaprotect_rutschung
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(ST_Buffer(geometrie,0.0), 0.001)))
;
UPDATE awjf_silvaprotect.silvaprotect_steinschlag
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001)))
;
