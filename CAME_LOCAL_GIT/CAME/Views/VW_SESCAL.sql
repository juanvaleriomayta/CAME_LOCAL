CREATE OR REPLACE FORCE VIEW came.vw_sescal (codses,asistencia,tipses,contador,participacion,caso,caso2,control,examparc,examfinal,trabajo,nomfase) AS
SELECT 
CODSES,ASISTENCIA,TIPSES,
(PARTICIPACION +CASO +CONTROL+EXAMPARC+EXAMFINAL+TRABAJO+CASO2) AS CONTADOR,
PARTICIPACION,
CASO,
CASO2,
CONTROL,
EXAMPARC,
EXAMFINAL,
TRABAJO,
NOMFASE
FROM SESION
INNER JOIN FASE ON SESION.CODFASE = FASE.CODFASE;