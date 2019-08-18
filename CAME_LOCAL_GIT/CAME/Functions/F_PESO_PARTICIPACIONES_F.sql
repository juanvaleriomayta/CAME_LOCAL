CREATE OR REPLACE FUNCTION came."F_PESO_PARTICIPACIONES_F" (CodigoFase number) 
Return Varchar2 Is
 PesoParticipaciones number;
Begin

    SELECT (CONFIG_PESOS.PESOPART) INTO PesoParticipaciones FROM CONFIG_PESOS WHERE CONFIG_PESOS.CODFASE = CodigoFase;

    if PesoParticipaciones >= 0 THEN
        Return (PesoParticipaciones);
    ELSE
        Return 0;
    END IF;

End F_PESO_PARTICIPACIONES_F;
/