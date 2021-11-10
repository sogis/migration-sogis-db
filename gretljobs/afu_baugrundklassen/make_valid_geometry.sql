UPDATE afu_baugrundklassen_v1.baugrundklassen_baugrundklasse
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001)))
;
