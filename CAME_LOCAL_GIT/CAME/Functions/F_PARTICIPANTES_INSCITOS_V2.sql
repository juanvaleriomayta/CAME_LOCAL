CREATE OR REPLACE FUNCTION came.F_PARTICIPANTES_INSCITOS_V2 (TipoPersona VARCHAR2, CodTipProg INTEGER) RETURN vARCHAR2 
IS
COD_PER VARCHAR2(20);
BEGIN
SELECT 
COUNT(1) INTO COD_PER 
--TIPOPROG.NOMTIPOPG||''||ESTUD.TIPOPER
FROM PROG_DET 
INNER JOIN PROGRAMA ON PROG_DET.CODPROG = PROGRAMA.CODPROG
INNER JOIN asignacion ON PROG_DET.coddetprog = asignacion.coddetprog
INNER JOIN PERSONA ESTUD ON asignacion.CODPER = ESTUD.CODPER
INNER JOIN TIPOPROG ON PROGRAMA.CODTIPPG = TIPOPROG.CODTIPPG
WHERE  ESTUD.TIPOPER = TipoPersona AND TIPOPROG.CODTIPPG = CodTipProg
GROUP BY PROG_DET.coddetprog;
RETURN COD_PER;
End F_PARTICIPANTES_INSCITOS_V2;
/