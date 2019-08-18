CREATE OR REPLACE FUNCTION came."F_PESO_CASOS_F" (CodigoFase number) Return Varchar2 Is
    PesoCasos number;
Begin

SELECT (CONFIG_PESOS.PESOCASO) INTO PesoCasos FROM CONFIG_PESOS WHERE CONFIG_PESOS.CODFASE = CodigoFase;

    if PesoCasos >= 0 THEN
        Return (PesoCasos);
    ELSE
        Return 0;
    END IF;

End F_PESO_CASOS_F;
/