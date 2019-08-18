CREATE OR REPLACE FORCE VIEW came.vw_rfpar_punt (codses,item,op,opcion,resultado) AS
SELECT 
CODSES,
'Puntualidad' AS ITEM,
AUTRPT1 as OP,
CASE 
WHEN AUTRPT1 = '1' THEN 'Más de 15min tarde'
WHEN AUTRPT1 = '2' THEN 'Hasta 10min tarde'
WHEN AUTRPT1 = '3' THEN 'Más de 5min tarde'
WHEN AUTRPT1 = '4' THEN 'A tiempo'
END AS OPCION,
COUNT(AUTRPT1) AS RESULTADO
FROM FPARTICIPANTE
GROUP BY AUTRPT1, 'Puntualidad', CODSES ORDER BY ITEM,OP;