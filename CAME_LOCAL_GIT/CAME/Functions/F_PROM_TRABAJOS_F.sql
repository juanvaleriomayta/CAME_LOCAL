CREATE OR REPLACE FUNCTION came."F_PROM_TRABAJOS_F" (CodigoAsignacion number, CodigoFase number) Return number Is
    PromedioTrabajos float;
Begin

    SELECT 
    AVG(SESION_DET.TRABAJO) INTO PromedioTrabajos
    FROM SESION_DET 
    INNER JOIN SESION ON SESION_DET.CODSES = SESION.CODSES
    WHERE SESION.TIPSES LIKE '%T%' AND SESION.CODFASE = CodigoFase AND SESION_DET.CODASIG = CodigoAsignacion;

    if PromedioTrabajos is not null then
        Return (PromedioTrabajos);
    else
        return 0;
    end if;

End F_PROM_TRABAJOS_F;
/