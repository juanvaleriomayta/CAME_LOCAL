CREATE OR REPLACE PROCEDURE came.SP_LISTA_ASISTENCIA(
    programa IN VARCHAR2,
    nombre OUT VARCHAR2,
    fecha OUT VARCHAR2,
    sesion OUT VARCHAR2,
    asistencia OUT VARCHAR2,
    total OUT VARCHAR2)
IS
BEGIN
    SELECT PERSONA.NOMPER, SESION.FECHASES, 'SESION '||SESION.NOMSES SESION,
    CASE SESION_DET.ASISTENCIA
    WHEN '1' THEN 'A'
    WHEN '2' THEN 'T'
    WHEN '0' THEN 'F'
    END ASISTENCIA,
    'A='||F_PARTICIPANTE_ASISTENCIA(PERSONA.NOMPER)||' F='||F_PARTICIPANTE_TARDANZA(PERSONA.NOMPER)||' T='||F_PARTICIPANTE_FALTA(PERSONA.NOMPER) TOTAL 
    INTO nombre, fecha, sesion, asistencia, total
    FROM PERSONA
    INNER JOIN ASIGNACION ON ASIGNACION.CODPER = PERSONA.CODPER
    INNER JOIN SESION_DET ON SESION_DET.CODASIG = ASIGNACION.CODASIG
    INNER JOIN SESION ON SESION.CODSES = SESION_DET.CODSES
    INNER JOIN PROG_DET ON PROG_DET.CODDETPROG = ASIGNACION.CODDETPROG
    INNER JOIN PROGRAMA ON PROGRAMA.CODPROG = PROG_DET.CODPROG
    WHERE PROGRAMA.CODPROG LIKE programa
    ORDER BY FECHASES ASC;
END;
/