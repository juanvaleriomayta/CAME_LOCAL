CREATE OR REPLACE FUNCTION came."F_PROM_PARTICIPACIONES" (CodigoAsignacion number, CodigoFase number) Return Varchar2 Is
    PromedioParticipaciones float;
    PesoParticipaciones number;
Begin

    SELECT 
    (CASE WHEN AVG(SESION_DET.PARTICIPACION) IS NULL THEN 0 ELSE AVG(SESION_DET.PARTICIPACION) END) INTO PromedioParticipaciones
    FROM SESION_DET 
    INNER JOIN SESION ON SESION_DET.CODSES = SESION.CODSES
    WHERE SESION.TIPSES LIKE '%S%' AND SESION.CODFASE = CodigoFase AND SESION_DET.CODASIG = CodigoAsignacion;

    SELECT (CONFIG_PESOS.PESOPART) INTO PesoParticipaciones FROM CONFIG_PESOS WHERE CONFIG_PESOS.CODFASE = CodigoFase;

    if PromedioParticipaciones >= 0 and PesoParticipaciones >= 0 THEN
        Return (PromedioParticipaciones*PesoParticipaciones);
    ELSE
        Return 0;
    END IF;

End F_PROM_PARTICIPACIONES;
/