CREATE OR REPLACE FORCE VIEW came.vw_dir_prog_final (director) AS
SELECT DISTINCT(
DIRECTOR.NOMPER ||' ' || DIRECTOR.APEPER )AS DIRECTOR
FROM ASIGNACION
INNER JOIN PROG_DET ON PROG_DET.CODDETPROG = ASIGNACION.CODDETPROG
INNER JOIN PERSONA DIRECTOR ON DIRECTOR.CODPER = PROG_DET.CODPER
WHERE ROWNUM = 1;