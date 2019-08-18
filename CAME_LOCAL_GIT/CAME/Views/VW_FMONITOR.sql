CREATE OR REPLACE FORCE VIEW came.vw_fmonitor (codper,coddetprog,nomper,codfmon,asistencia,entcaso,ussec,puntualidad,participacion,observacion) AS
SELECT
    asigmonitor.codper,
    asigmonitor.CODDETPROG,
    ( apeper || ' ' || nomper ) AS nomper,
    fmonitor.codfmon,
    fmonitor.asistencia,
    fmonitor.entcaso,
    fmonitor.USSEC,
    fmonitor.PUNTUALIDAD,
    fmonitor.PARTICIPACION,
    fmonitor.OBSERVACION
FROM
    asigmonitor
    INNER JOIN persona ON asigmonitor.codper = persona.codper
    LEFT OUTER JOIN fmonitor ON persona.codper = fmonitor.codper;