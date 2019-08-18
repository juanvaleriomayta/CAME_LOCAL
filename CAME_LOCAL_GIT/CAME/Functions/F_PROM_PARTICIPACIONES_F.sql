CREATE OR REPLACE FUNCTION came."F_PROM_PARTICIPACIONES_F" (CodigoAsignacion number, CodigoFase number) Return number Is
    PromedioParticipaciones float;
Begin
SELECT
SUM(SUM( (sesion_det.participacion / ( SELECT  COUNT(s.ASISTENCIA)  FROM  SESION 
        INNER JOIN sesion_det s ON s.codses =sesion.codses
        INNER JOIN FASE f ON sesion.codfase=f.codfase
        WHERE s.codasig =sesion_det.codasig AND f.codfase= fase.codfase AND  SESION.TIPSES LIKE '%S%'
        AND (s.ASISTENCIA LIKE '1' OR s.ASISTENCIA LIKE '2')))))  INTO  PromedioParticipaciones
        FROM SESION INNER JOIN sesion_det ON sesion_det.codses =sesion.codses 
        INNER JOIN FASE ON fase.codfase = sesion.codfase 
        WHERE sesion_det.codasig = CodigoAsignacion AND fase.codfase = CodigoFase AND  SESION.TIPSES LIKE '%S%' group by sesion_det.participacion; 
    if PromedioParticipaciones is not null then
        Return (PromedioParticipaciones);
    else
        return 0;
    end if;

End F_PROM_PARTICIPACIONES_F;
/