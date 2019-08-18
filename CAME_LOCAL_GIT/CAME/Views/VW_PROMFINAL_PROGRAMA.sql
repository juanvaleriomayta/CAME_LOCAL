CREATE OR REPLACE FORCE VIEW came.vw_promfinal_programa (codasig,nomper,apeper,tipoper,coddetprog,gendetprog,promediofinal,inasistencias,liminac) AS
SELECT 
    ASIGNACION.CODASIG,
    PERSONA.NOMPER,PERSONA.APEPER, 
    PERSONA.TIPOPER,
    PROG_DET.CODDETPROG,
    PROG_DET.GENDETPROG,
    F_PROMFINAL_PROGRAMA(ASIGNACION.CODASIG, PROG_DET.CODDETPROG) AS PROMEDIOFINAL,
    F_REPORTE_INASISTENCIA(ASIGNACION.CODASIG, PROG_DET.CODDETPROG) AS INASISTENCIAS,
    LIMINAC -- SE AGREGÓ ESTE CAMPO EL 04/04/2019
    FROM ASIGNACION 
    INNER JOIN PERSONA ON PERSONA.CODPER = ASIGNACION.CODPER
    INNER JOIN PROG_DET ON PROG_DET.CODDETPROG = ASIGNACION.CODDETPROG;