CREATE OR REPLACE FUNCTION came."F_PESO_FINALES_F" (CodigoFase number) Return Varchar2 Is
     PesoExamenFinal number;
Begin

    SELECT (CONFIG_PESOS.PESOFINAL) INTO PesoExamenFinal FROM CONFIG_PESOS WHERE CONFIG_PESOS.CODFASE = CodigoFase;

    if PesoExamenFinal is not null then
        Return (PesoExamenFinal);
    else
        return 0;
    end if;

End F_PESO_FINALES_F;
/