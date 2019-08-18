CREATE OR REPLACE FUNCTION came.F_TOTAL_PROGRAMAS (TIPOPROGRAMA VARCHAR2, TIPOPERSONA VARCHAR2) RETURN VARCHAR2 
IS
COD_PROG2 NUMBER;
BEGIN
SELECT 
COUNT(TIPOPROG.CODTIPPG) INTO COD_PROG2
FROM PROG_DET 
INNER JOIN PROGRAMA ON PROG_DET.CODPROG = PROGRAMA.CODPROG
INNER JOIN PERSONA ON PROG_DET.CODPER = PERSONA.CODPER
INNER JOIN TIPOPROG ON PROGRAMA.CODTIPPG = TIPOPROG.CODTIPPG
WHERE PROGRAMA.codprog = TIPOPROGRAMA --AND ESTUD.TIPOPER = TIPOPERSONA
;--GROUP BY TIPOPROG.CODTIPPG;
RETURN COD_PROG2;
End F_TOTAL_PROGRAMAS;
/