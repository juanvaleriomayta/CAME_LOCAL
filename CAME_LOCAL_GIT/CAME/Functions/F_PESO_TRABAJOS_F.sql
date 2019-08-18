CREATE OR REPLACE FUNCTION came."F_PESO_TRABAJOS_F" (CodigoFase number) Return Varchar2 Is
  PesoTrabajos number;
Begin

    SELECT (CONFIG_PESOS.PESOTRA) INTO PesoTrabajos FROM CONFIG_PESOS WHERE CONFIG_PESOS.CODFASE = CodigoFase;

    if  PesoTrabajos >= 0 THEN
        Return (PesoTrabajos);
    ELSE
        Return 0;
    END IF;

End F_PESO_TRABAJOS_f;
/