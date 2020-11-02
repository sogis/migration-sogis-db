UPDATE afu_baugrundklassen.baugrundklassen_baugrundklasse
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001)))
;
