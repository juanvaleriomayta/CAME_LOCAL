CREATE OR REPLACE FUNCTION came."F_PROM_FINALES_F" (CodigoAsignacion number, CodigoFase number) Return number Is
    PromedioExamenFinal float;
Begin

    SELECT 
    AVG(SESION_DET.EXAMFINAL) INTO PromedioExamenFinal 
    FROM SESION_DET 
    INNER JOIN SESION ON SESION_DET.CODSES = SESION.CODSES
    WHERE SESION.TIPSES LIKE '%F%' AND SESION.CODFASE = CodigoFase AND SESION_DET.CODASIG = CodigoAsignacion;

    if PromedioExamenFinal is not null then
        Return (PromedioExamenFinal);
    else
        return 0;
    end if;

End F_PROM_FINALES_F;
/