CREATE OR REPLACE FUNCTION came."F_PROM_PARCIALES_F" (CodigoAsignacion number, CodigoFase number) Return number Is
    PromedioExamenParcial float;
Begin

    SELECT
    AVG(SESION_DET.EXAMPARC) INTO PromedioExamenParcial
    FROM SESION_DET 
    INNER JOIN SESION ON SESION_DET.CODSES = SESION.CODSES
    WHERE SESION.TIPSES LIKE '%P%' AND SESION.CODFASE = CodigoFase AND SESION_DET.CODASIG = CodigoAsignacion;

    if PromedioExamenParcial is not null then
        Return (PromedioExamenParcial);
    else
        return 0;
    end if;

End F_PROM_PARCIALES_F;
/