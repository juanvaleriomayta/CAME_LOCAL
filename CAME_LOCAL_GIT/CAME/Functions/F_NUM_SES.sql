CREATE OR REPLACE FUNCTION came."F_NUM_SES" ( codigoprogramadetalle INTEGER ) RETURN VARCHAR2 IS
    numeroSesiones   FLOAT;
BEGIN
    SELECT
        COUNT(*) INTO numeroSesiones
    FROM
        prog_det
        INNER JOIN fase ON prog_det.coddetprog = fase.coddetprog
        INNER JOIN sesion ON sesion.codfase = fase.codfase
    WHERE
        prog_det.coddetprog = codigoprogramadetalle;

    IF
        codigoprogramadetalle >= 0
    THEN
        RETURN numeroSesiones;
    ELSE
        RETURN 0;
    END IF;
END f_num_ses;
/