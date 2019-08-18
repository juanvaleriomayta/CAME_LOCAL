CREATE OR REPLACE FUNCTION came.F_PARTINSCRITOS (INSCRITOS NUMBER) RETURN NUMBER
IS
PARTICIPANTES NUMBER;
BEGIN
SELECT COUNT((NOMPER||' '||APEPER)) AS INSCRITO INTO PARTICIPANTES
FROM PROG_DET 
INNER JOIN PROGRAMA ON PROG_DET.CODPROG = PROGRAMA.CODPROG
INNER JOIN asignacion ON PROG_DET.coddetprog = asignacion.coddetprog
INNER JOIN PERSONA ESTUD ON asignacion.CODPER = ESTUD.CODPER
INNER JOIN TIPOPROG ON PROGRAMA.CODTIPPG = TIPOPROG.CODTIPPG
WHERE TIPOPER LIKE 'ES';
END F_PARTINSCRITOS;
/