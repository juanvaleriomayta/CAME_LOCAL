CREATE OR REPLACE FORCE VIEW came.vw_rfdp_se (codses,item,op,opcion,resultado) AS
SELECT 
CODSES,
'La sesión en su conjunto fué' AS ITEM,
SESRPT as OP,
CASE 
WHEN SESRPT = '1' THEN 'Mal'
WHEN SESRPT = '2' THEN 'Regular'
WHEN SESRPT = '3' THEN 'Bien'
WHEN SESRPT = '4' THEN 'Muy bien'
WHEN SESRPT = '5' THEN 'Excelente'
END AS OPCION,
COUNT(SESRPT) AS RESULTADO
FROM FDPROGRAMA
GROUP BY SESRPT, 'La sesión en su conjunto fué', CODSES ORDER BY ITEM,OP;