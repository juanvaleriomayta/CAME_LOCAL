CREATE OR REPLACE FORCE VIEW came.vw_programa (codprog,nomprog,codtippg,nomtipopg,estprog,iniprog,codemp,nombemp) AS
SELECT 
PROGRAMA.CODPROG,
PROGRAMA.NOMPROG,
TIPOPROG.CODTIPPG,
TIPOPROG.NOMTIPOPG,
PROGRAMA.ESTPROG,
PROGRAMA.INIPROG,
EMPRESA.CODEMP,
EMPRESA.NOMBEMP
FROM PROGRAMA
INNER JOIN TIPOPROG ON TIPOPROG.CODTIPPG = PROGRAMA.CODTIPPG 
INNER JOIN EMPRESA ON PROGRAMA.CODEMP = EMPRESA.CODEMP
WHERE PROGRAMA.ESTPROG = 'A'
ORDER BY CODPROG;