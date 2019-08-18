CREATE OR REPLACE FUNCTION came."F_PROM_FINALES" (CodigoAsignacion number, CodigoFase number) Return Varchar2 Is
    PromedioExamenFinal float;
    PesoExamenFinal number;
Begin

    SELECT 
    (CASE WHEN AVG(SESION_DET.EXAMFINAL) IS NULL THEN 0 ELSE AVG(SESION_DET.EXAMFINAL) END) INTO PromedioExamenFinal 
    FROM SESION_DET 
    INNER JOIN SESION ON SESION_DET.CODSES = SESION.CODSES
    WHERE SESION.TIPSES LIKE '%F%' AND SESION.CODFASE = CodigoFase AND SESION_DET.CODASIG = CodigoAsignacion;

    SELECT (CONFIG_PESOS.PESOFINAL) INTO PesoExamenFinal FROM CONFIG_PESOS WHERE CONFIG_PESOS.CODFASE = CodigoFase;

    if PromedioExamenFinal >= 0 and PesoExamenFinal >= 0 THEN
        Return (PromedioExamenFinal*PesoExamenFinal);
    ELSE
        Return 0;
    END IF;

End F_PROM_FINALES;
/