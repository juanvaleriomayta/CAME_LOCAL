CREATE OR REPLACE FUNCTION came."F_PROM_PARCIALES" (CodigoAsignacion number, CodigoFase number) Return Varchar2 Is
    PromedioExamenParcial float;
    PesoExamenParcial number;
Begin

    SELECT 
    (CASE WHEN AVG(SESION_DET.EXAMPARC) IS NULL THEN 0 ELSE AVG(SESION_DET.EXAMPARC) END) INTO PromedioExamenParcial
    FROM SESION_DET 
    INNER JOIN SESION ON SESION_DET.CODSES = SESION.CODSES
    WHERE SESION.TIPSES LIKE '%P%' AND SESION.CODFASE = CodigoFase AND SESION_DET.CODASIG = CodigoAsignacion;

    SELECT (CONFIG_PESOS.PESOPARC) INTO PesoExamenParcial FROM CONFIG_PESOS WHERE CONFIG_PESOS.CODFASE = CodigoFase;

    if PromedioExamenParcial >= 0 and PesoExamenParcial >= 0 THEN
        Return (PromedioExamenParcial*PesoExamenParcial);
    ELSE
        Return 0;
    END IF;

End F_PROM_PARCIALES;
/