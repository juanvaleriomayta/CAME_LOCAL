CREATE OR REPLACE FORCE VIEW came.vw_num_fases (nomfase,codasig,codfase,coddetprog,promfase) AS
SELECT 
    fase.NOMFASE,
    asignacion.CODASIG,
    fase.CODFASE,
    asignacion.CODDETPROG,
    (SELECT PF.PROMFAS FROM FASE_DET PF WHERE PF.CODASIG = asignacion.CODASIG AND PF.CODFASE = fase.codfase) AS PROMFASE
FROM  
    fase
    INNER JOIN asignacion ON fase.coddetprog = asignacion.coddetprog
    ORDER BY fase.NOMFASE DESC;