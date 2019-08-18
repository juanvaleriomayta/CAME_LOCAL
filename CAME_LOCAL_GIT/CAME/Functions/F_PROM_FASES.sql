CREATE OR REPLACE FUNCTION came."F_PROM_FASES" (CodigoFase NUMBER, CodigoAsignacion INTEGER) Return Varchar2 Is
    SumaNotas  FLOAT;
    SumaDePesos FLOAT;
Begin 
    SELECT (
    F_PROM_CASOS(CodigoAsignacion,CodigoFase) +
    F_PROM_FINALES(CodigoAsignacion,CodigoFase) +
    F_PROM_PARCIALES(CodigoAsignacion,CodigoFase) +
    F_PROM_TRABAJOS(CodigoAsignacion,CodigoFase) +
    F_PROM_PARTICIPACIONES(CodigoAsignacion,CodigoFase))INTO SumaNotas FROM DUAL;

    SELECT (PESOCASO + PESOTRA + PESOPARC + PESOFINAL + PESOPART) INTO SumaDePesos
        FROM CONFIG_PESOS 
        WHERE CODFASE = CodigoFase;
    Return (SumaNotas/SumaDePesos);
End F_PROM_FASES;
/