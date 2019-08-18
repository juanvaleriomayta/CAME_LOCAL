CREATE OR REPLACE FORCE VIEW came.vw_prof_imp_parc (profesor,decses,codses,nomses,tipses,codprog,nomprog,estprog,codfase,nomfase,estfase,codprof,alumno,dniper) AS
SELECT 
DISTINCT (UPPER(PROFESOR.APEPER) ||' ' || INITCAP(PROFESOR.NOMPER)) AS PROFESOR,
SESION.DECSES,
SESION.CODSES,
SESION.NOMSES,
SESION.TIPSES,
PROGRAMA.CODPROG,
PROGRAMA.NOMPROG,
PROGRAMA.ESTPROG,
FASE.CODFASE,
FASE.NOMFASE,
FASE.ESTFASE,
SESION.CODPROF,
PERSONA.NOMPER ||' '|| PERSONA.APEPER AS ALUMNO,
PERSONA.DNIPER
FROM PROG_DET
INNER JOIN PROGRAMA ON  PROGRAMA.CODPROG = PROG_DET.CODPROG
INNER JOIN FASE ON PROG_DET.CODDETPROG = FASE.CODDETPROG
INNER JOIN SESION ON FASE.CODFASE = SESION.CODFASE
INNER JOIN ASIGNACION ON ASIGNACION.CODDETPROG = PROG_DET.CODDETPROG
INNER JOIN PERSONA ON ASIGNACION.CODPER = PERSONA.CODPER
INNER JOIN PERSONA PROFESOR ON PROFESOR.CODPER = SESION.CODPROF;