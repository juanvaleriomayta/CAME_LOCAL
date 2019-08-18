CREATE OR REPLACE FUNCTION came."F_PESO_PARCIALES_F" (CodigoFase number) Return Varchar2 Is
     PesoExamenParcial number;
Begin

    SELECT (CONFIG_PESOS.PESOPARC) INTO PesoExamenParcial FROM CONFIG_PESOS WHERE CONFIG_PESOS.CODFASE = CodigoFase;

    if  PesoExamenParcial >= 0 THEN
        Return (PesoExamenParcial);
    ELSE
        Return 0;
    END IF;

End F_PESO_PARCIALES_F;
/