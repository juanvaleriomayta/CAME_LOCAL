CREATE OR REPLACE FUNCTION came."F_PROM_CASOS" (CodigoAsignacion number, CodigoFase number) Return Varchar2 Is
    PromedioCasos float;
    PesoCasos number;
Begin

    SELECT 
        AVG(case when SESION.TIPSES LIKE '%S2%' THEN ((SESION_DET.CASO + SESION_DET.CASO2)/2) ELSE SESION_DET.CASO end) 
        INTO PromedioCasos
        FROM SESION_DET 
        INNER JOIN SESION ON SESION_DET.CODSES = SESION.CODSES where CODASIG = CodigoAsignacion AND CODFASE = CodigoFase;

    SELECT (CONFIG_PESOS.PESOCASO) INTO PesoCasos FROM CONFIG_PESOS WHERE CONFIG_PESOS.CODFASE = CodigoFase;


    if PromedioCasos >= 0 and PesoCasos >= 0 THEN
        Return (PromedioCasos*PesoCasos);
    ELSE
        Return 0;
    END IF;

End F_PROM_CASOS;
/