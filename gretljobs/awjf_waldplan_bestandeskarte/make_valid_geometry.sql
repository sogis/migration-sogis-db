UPDATE awjf_waldplan_bestandeskarte_v1.waldplan_bestandeskarte
    --SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_SnapToGrid(geometrie, 0.001), 0.001))
--     SET geometrie = (ST_Dump(ST_ReducePrecision(ST_Buffer(geometrie, 0.02), 0.01))).geom                                   -- geht ev. nicht, nochmals testen
--     SET geometrie = ST_RemoveRepeatedPoints(ST_ReducePrecision(ST_Buffer(geometrie, 0.02), 0.01), 0.001)                   -- geht bei awjf_work.wap_bst_bkt und awjf.wap_bst
--     SET geometrie = ST_RemoveRepeatedPoints(ST_ReducePrecision(ST_Buffer(geometrie, 0.02), 0.01), 0.01)                    --  awjf_work.wap_bst_es: ERROR: First argument geometry could not be converted to GEOS: IllegalArgumentException: Invalid number of points in LinearRing found 2 - must be 0 or >= 4
--     SET geometrie = ST_RemoveRepeatedPoints(ST_ReducePrecision(geometrie, 0.01), 0.01)                                     -- awjf_work.wap_bst_es: ERROR: Geometry type (MultiPolygon) does not match column type (Polygon)
    SET geometrie = ST_MakeValid(ST_RemoveRepeatedPoints(ST_ReducePrecision(ST_Buffer(geometrie, 0.02), 0.01), 0.01))         -- Test mit awjf_work.wap_bst_es
;

