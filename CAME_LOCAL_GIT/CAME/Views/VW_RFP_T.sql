CREATE OR REPLACE FORCE VIEW came.vw_rfp_t (codses,item,op,opcion,resultado) AS
SELECT 
CODSES,
'Actualidad del tema' AS ITEM,
TEM1 as OP,
CASE 
WHEN TEM1 = '1' THEN 'Mal'
WHEN TEM1 = '2' THEN 'Regular'
WHEN TEM1 = '3' THEN 'Bien'
WHEN TEM1 = '4' THEN 'Muy bien'
WHEN TEM1 = '5' THEN 'Excelente'
END AS OPCION,
COUNT(TEM1) AS RESULTADO
FROM FPROFESOR 
GROUP BY TEM1, 'Actualidad del tema', CODSES UNION
SELECT 
CODSES,
'Vínculo del caso con el tema' AS ITEM,
TEM2 as OP,
CASE 
WHEN TEM2 = '1' THEN 'Mal'
WHEN TEM2 = '2' THEN 'Regular'
WHEN TEM2 = '3' THEN 'Bien'
WHEN TEM2 = '4' THEN 'Muy bien'
WHEN TEM2 = '5' THEN 'Excelente'
END AS OPCION,
COUNT(TEM2) AS RESULTADO
FROM FPROFESOR 
GROUP BY TEM2, 'Vínculo del caso con el tema', CODSES ORDER BY ITEM,OP;