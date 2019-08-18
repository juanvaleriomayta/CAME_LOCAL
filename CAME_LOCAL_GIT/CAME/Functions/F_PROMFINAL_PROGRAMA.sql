CREATE OR REPLACE FUNCTION came."F_PROMFINAL_PROGRAMA" ( CodigoAsig FLOAT,  CodigoDetProg FLOAT) Return Varchar2 Is
    PromedioPrograma  FLOAT ;
Begin
    SELECT ROUND(AVG(FASE_DET.PROMFAS),2) INTO PromedioPrograma FROM FASE_DET INNER JOIN FASE ON FASE_DET.CODFASE = FASE.CODFASE 
    WHERE FASE_DET.CODASIG = CodigoAsig AND FASE.CODDETPROG = CodigoDetProg; 

    if PromedioPrograma >= 0 THEN
        Return PromedioPrograma;
    ELSE
        Return 0;
    END IF;
End F_PROMFINAL_PROGRAMA;
/