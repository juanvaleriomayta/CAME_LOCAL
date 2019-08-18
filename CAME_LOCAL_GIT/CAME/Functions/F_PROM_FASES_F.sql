CREATE OR REPLACE FUNCTION came."F_PROM_FASES_F" (CodigoFase NUMBER, CodigoAsignacion INTEGER) Return Varchar2 Is
    SumaNotas  FLOAT;
    SumaDePesos FLOAT;
Begin 
    SELECT (
    (F_PROM_CASOS_F(CodigoAsignacion,CodigoFase) * F_PROM_CASOS_F(CodigoAsignacion,CodigoFase)) +
    (F_PROM_FINALES_F(CodigoAsignacion,CodigoFase)*F_PROM_FINALES_F(CodigoAsignacion,CodigoFase)) +
    (F_PROM_PARCIALES_F(CodigoAsignacion,CodigoFase)*F_PROM_PARCIALES_F(CodigoAsignacion,CodigoFase)) +
    (F_PROM_TRABAJOS_F(CodigoAsignacion,CodigoFase)*F_PROM_TRABAJOS_F(CodigoAsignacion,CodigoFase)) +
    (F_PROM_PARTICIPACIONES_F(CodigoAsignacion,CodigoFase)*F_PROM_PARTICIPACIONES_F(CodigoAsignacion,CodigoFase)))INTO SumaNotas FROM DUAL;

    SELECT (PESOCASO + PESOTRA + PESOPARC + PESOFINAL + PESOPART) INTO SumaDePesos
        FROM CONFIG_PESOS 
        WHERE CODFASE = CodigoFase;
    Return (SumaNotas/SumaDePesos);
End F_PROM_FASES_F;
/