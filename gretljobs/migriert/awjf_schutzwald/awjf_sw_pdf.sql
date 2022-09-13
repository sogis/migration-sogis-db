SELECT
    wkb_geometry AS geometrie,
    CASE
        WHEN pdf = ''
            THEN NULL
        ELSE pdf
    END AS dokument,
    jahr,
    CASE
        WHEN code = 10
            THEN 'Handlungsbedarf_ohne_Ansprache'
        WHEN code = 11
            THEN 'Handlungsbedarf_Dringlichkeit_klein'
        WHEN code = 12
            THEN 'Handlungsbedarf_Dringlichkeit_mittel'
        WHEN code = 13
            THEN 'Handlungsbedarf_Dringlichkeit_gross'
        WHEN code = 20
            THEN 'kein_Handlungsbedarf'
        WHEN code = 99
            THEN 'keine_Ansprache'
    END AS nais_code,
    CASE
        WHEN text = ''
            THEN NULL
        ELSE text
    END AS beschreibung
FROM
    awjf.sw_pdf
WHERE
    archive = 0
;
