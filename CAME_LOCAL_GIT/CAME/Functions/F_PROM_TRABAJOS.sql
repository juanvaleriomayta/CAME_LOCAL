CREATE OR REPLACE FUNCTION came."F_PROM_TRABAJOS" (CodigoAsignacion number, CodigoFase number) Return Varchar2 Is
    PromedioTrabajos float;
    PesoTrabajos number;
Begin
    SELECT 
    (CASE WHEN AVG(SESION_DET.TRABAJO) IS NULL THEN 0 ELSE AVG(SESION_DET.TRABAJO) END) INTO PromedioTrabajos
    FROM SESION_DET 
    INNER JOIN SESION ON SESION_DET.CODSES = SESION.CODSES
    WHERE SESION.TIPSES LIKE '%T%' AND SESION.CODFASE = CodigoFase AND SESION_DET.CODASIG = CodigoAsignacion;

    SELECT (CONFIG_PESOS.PESOTRA) INTO PesoTrabajos FROM CONFIG_PESOS WHERE CONFIG_PESOS.CODFASE = CodigoFase;

    if PromedioTrabajos >= 0 and PesoTrabajos >= 0 THEN
        Return (PromedioTrabajos*PesoTrabajos);
    ELSE
        Return 0;
    END IF;

End F_PROM_TRABAJOS;
/