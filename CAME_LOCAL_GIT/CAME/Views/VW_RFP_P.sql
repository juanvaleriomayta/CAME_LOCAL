CREATE OR REPLACE FORCE VIEW came.vw_rfp_p (codses,item,op,opcion,resultado) AS
SELECT 
CODSES,
'Participación' AS ITEM,
PART1 as OP,
CASE 
WHEN PART1 = '1' THEN 'Mal'
WHEN PART1 = '2' THEN 'Regular'
WHEN PART1 = '3' THEN 'Bien'
WHEN PART1 = '4' THEN 'Muy bien'
WHEN PART1 = '5' THEN 'Excelente'
END AS OPCION,
COUNT(PART1) AS RESULTADO
FROM FPROFESOR 
GROUP BY PART1, 'Participación', CODSES UNION
SELECT 
CODSES,
'Preparación para la sesión' AS ITEM,
PART2 as OP,
CASE 
WHEN PART2 = '1' THEN 'Mal'
WHEN PART2 = '2' THEN 'Regular'
WHEN PART2 = '3' THEN 'Bien'
WHEN PART2 = '4' THEN 'Muy bien'
WHEN PART2 = '5' THEN 'Excelente'
END AS OPCION,
COUNT(PART2) AS RESULTADO
FROM FPROFESOR 
GROUP BY PART2, 'Preparación para la sesión', CODSES ORDER BY ITEM,OP;