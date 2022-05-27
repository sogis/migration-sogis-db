SELECT
    wkb_geometry AS geometrie,
    cat AS seso_join,
    node_fid,
    kategorie,
    eigentum,
    CASE
        WHEN gmde_name = 'Rohr'
            THEN 'Stüsslingen'
        WHEN gmde_name IN ('Gänsbrunnen', 'Welschenrohr')
            THEN 'Gänsbrunnen-Welschenrohr'
    ELSE
        gmde_name
    END AS gemeinde
FROM
    public.aww_seso_ara
WHERE
    archive = 0
;
