CREATE OR REPLACE FORCE VIEW came.vw_rfdp_pu (codses,item,op,opcion,resultado) AS
SELECT 
CODSES,
'Puntualidad al inicio' AS ITEM,
PUNTRPT1 as OP,
CASE 
WHEN PUNTRPT1 = '1' THEN 'Si'
WHEN PUNTRPT1 = '2' THEN 'No'
END AS OPCION,
COUNT(PUNTRPT1) AS RESULTADO
FROM FDPROGRAMA
GROUP BY PUNTRPT1, 'Puntualidad al inicio', CODSES UNION
SELECT 
CODSES,
'Puntualidad al final' AS ITEM,
PUNTRPT2 as OP,
CASE 
WHEN PUNTRPT2 = '1' THEN 'Si'
WHEN PUNTRPT2 = '2' THEN 'No'
END AS OPCION,
COUNT(PUNTRPT2) AS RESULTADO
FROM FDPROGRAMA
GROUP BY PUNTRPT2, 'Puntualidad al final', CODSES ORDER BY ITEM,OP;