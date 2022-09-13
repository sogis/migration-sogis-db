-- Remember:
-- Always use CREATE OR REPLACE VIEW, as the script must be repeatable. (Don't use CREATE VIEW.)
-- Never use any schema names in the view definition; only use the ${dbSchema} variable instead.
-- All view names must end in "_v".


-- Example: View for Solr search
CREATE OR REPLACE VIEW ${dbSchema}.schutzwald_perimeter_solr_v AS
WITH
index_base AS (
SELECT
    'ch.so.awjf.schutzwaldausscheidung'::text AS subclass,
    t_id AS id_in_class,
    concat('Name: ',schutzwald_nr2 ,' (Perimeter)') AS displaytext,
    schutzwald_nr2 AS part_1,
    (st_asgeojson(st_envelope(geometrie), 0, 1)::json -> 'bbox')::text AS bbox,
    'Schutzwald Perimeter Name'::text AS part_3
FROM
    ${dbSchema}.schutzwald
)

SELECT
    (array_to_json(ARRAY[subclass::text, id_in_class::text]))::text AS id,
    displaytext AS display,
    part_1 AS search_1_stem,
    (part_1 || ' '::text) || index_base.part_3 AS search_3_stem,
    part_1 AS sort,
    subclass AS facet,
    bbox as bbox,
    (array_to_json(ARRAY['t_id'::text, 'str:n'::text]))::text AS idfield_meta
FROM
    index_base
;



CREATE OR REPLACE VIEW ${dbSchema}.schutzwald_natgef_solr_v AS
WITH
index_base AS (
SELECT
    'ch.so.awjf.schutzwald_hauptgefahrenpotentiale'::text AS subclass,
    t_id AS id_in_class,
    concat('Name: ',schutzwald_nr2,' (Schutzwald Naturgefahr)') AS displaytext,
    schutzwald_nr2 AS part_1,
    (st_asgeojson(st_envelope(geometrie), 0, 1)::json -> 'bbox')::text AS bbox,
    'Schutzwald Naturgefahr Name'::text AS part_3
FROM
    ${dbSchema}.schutzwald
)

SELECT
    (array_to_json(ARRAY[subclass::text, id_in_class::text]))::text AS id,
    displaytext AS display,
    part_1 AS search_1_stem,
    (part_1 || ' '::text) || index_base.part_3 AS search_3_stem,
    part_1 AS sort,
    subclass AS facet,
    bbox as bbox,
    (array_to_json(ARRAY['t_id'::text, 'str:n'::text]))::text AS idfield_meta
FROM
    index_base
;
