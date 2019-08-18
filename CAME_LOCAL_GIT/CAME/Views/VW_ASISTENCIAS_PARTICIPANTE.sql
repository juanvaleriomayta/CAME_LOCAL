CREATE OR REPLACE FORCE VIEW came.vw_asistencias_participante (nomses,fechases,asistencia,coddetprog,codasig) AS
SELECT  sesion.nomses,
        to_char(sesion.fechases,'DD/MON/YYYY') as fechases,
        sesion_det.asistencia,
        fase.coddetprog,
        sesion_det.codasig
    FROM sesion_det
        INNER JOIN sesion ON sesion_det.codses = sesion.codses
        INNER JOIN fase ON sesion.codfase = fase.codfase
ORDER BY sesion.nomses;