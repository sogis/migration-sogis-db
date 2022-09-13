SELECT
    geometrie,
    x AS x_koordinate,
    y AS y_koordinate,
    ino2_2010,
ino2_2010_range,
ino2_2020,
ino2_2020_range,
ipm10_2010,
ipm10_2010_range,
ipm10_2020,
ipm10_2020_range,
ipm25_2010,
ipm25_2020
FROM
    afu_immissionskarten_pub.luftbelastung_2010_2020
WHERE
    ST_Area(geometrie) >= 1.1
;
