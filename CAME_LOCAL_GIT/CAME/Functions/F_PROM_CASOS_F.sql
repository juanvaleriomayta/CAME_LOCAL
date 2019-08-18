CREATE OR REPLACE FUNCTION came."F_PROM_CASOS_F" (CodigoAsignacion number, CodigoFase number) Return number Is
    PromedioCasos float;
Begin

    SELECT 
        AVG(case when SESION.TIPSES LIKE '%S2%' THEN ((SESION_DET.CASO + SESION_DET.CASO2)/2) ELSE SESION_DET.CASO end) 
        INTO PromedioCasos
        FROM SESION_DET 
        INNER JOIN SESION ON SESION_DET.CODSES = SESION.CODSES where CODASIG = CodigoAsignacion AND CODFASE = CodigoFase;

    if PromedioCasos is not null then
        Return (PromedioCasos);
    else
        return 0;
    end if;

End F_PROM_CASOS_F;
/