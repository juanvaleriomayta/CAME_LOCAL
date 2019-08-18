CREATE OR REPLACE FUNCTION came."F_PORCENTAJE_INASISTENCIAS" ( codigoasignacion NUMBER,codigoprogramadetalle NUMBER ) RETURN VARCHAR2 IS
    totalsesiones        NUMBER;
    totalinasistencias   NUMBER;
    total_tardanza      NUMBER;
    total_inas_tard      NUMBER;
BEGIN
    totalsesiones := 0;
    totalinasistencias := 0;
    total_inas_tard := 0;

    SELECT f_num_ses(codigoprogramadetalle) INTO totalsesiones FROM dual;


    SELECT COUNT(*) INTO totalinasistencias
    FROM sesion_det
        INNER JOIN sesion ON sesion_det.codses = sesion.codses
        INNER JOIN fase ON sesion.codfase = fase.codfase
    WHERE
            sesion_det.asistencia LIKE '0'
        AND
            fase.coddetprog = codigoprogramadetalle
        AND
            sesion_det.codasig = codigoasignacion;

    SELECT COUNT(*) INTO total_tardanza
    FROM sesion_det
        INNER JOIN sesion ON sesion_det.codses = sesion.codses
        INNER JOIN fase ON sesion.codfase = fase.codfase
    WHERE
            sesion_det.asistencia LIKE '2'
        AND
            fase.coddetprog = codigoprogramadetalle
        AND
            sesion_det.codasig = codigoasignacion;


    SELECT TRUNC(total_tardanza/4) into total_inas_tard FROM DUAL;


    IF totalinasistencias > 0 AND totalsesiones > 0 OR total_inas_tard > 0 OR total_tardanza > 0
    THEN
        RETURN (round( ((totalinasistencias + total_inas_tard) / totalsesiones) * 100) || '% ' || (total_tardanza-total_inas_tard*4) || ' Tatardanzas');
    ELSE
        return(0 || '% 0 Tatardanzas');
    END IF;

END f_porcentaje_inasistencias;
/