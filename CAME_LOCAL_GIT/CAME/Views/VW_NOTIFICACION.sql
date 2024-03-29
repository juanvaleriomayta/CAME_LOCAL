CREATE OR REPLACE FORCE VIEW came.vw_notificacion (coddetprog,codnot,mennot,fecnot,fecnot2) AS
SELECT 
CODDETPROG,
CODNOT,
MENNOT,
FECNOT,
FECNOT2
FROM 
(SELECT 
CODDETPROG,
CODNOT,
MENNOT,
TO_CHAR(FECNOT, 'DD/MM/YYYY') AS FECNOT ,
TO_CHAR(FECNOT + 7, 'DD/MM/YYYY') AS FECNOT2
FROM NOTIFICACION 
ORDER BY CODNOT DESC);