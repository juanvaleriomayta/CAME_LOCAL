CREATE OR REPLACE FORCE VIEW came.vw_rfp_dp (codses,item,op,opcion,resultado) AS
SELECT 
CODSES,
'Información sobre el grupo' AS ITEM,
DIREPROG1 AS OP,
CASE 
WHEN DIREPROG1 = '1' THEN 'Mal'
WHEN DIREPROG1 = '2' THEN 'Regular'
WHEN DIREPROG1 = '3' THEN 'Bien'
WHEN DIREPROG1 = '4' THEN 'Muy bien'
WHEN DIREPROG1 = '5' THEN 'Excelente'
END AS OPCION,
COUNT(DIREPROG1) AS RESULTADO
FROM FPROFESOR 
GROUP BY DIREPROG1, 'Información sobre el grupo', CODSES  UNION 
SELECT 
CODSES,
'Retroalimentación' AS ITEM,
DIREPROG2 AS OP,
CASE 
WHEN DIREPROG2 = '1' THEN 'Mal'
WHEN DIREPROG2 = '2' THEN 'Regular'
WHEN DIREPROG2 = '3' THEN 'Bien'
WHEN DIREPROG2 = '4' THEN 'Muy bien'
WHEN DIREPROG2 = '5' THEN 'Excelente'
END AS OPCION,
COUNT(DIREPROG2) AS RESULTADO
FROM FPROFESOR 
GROUP BY DIREPROG2, 'Retroalimentación', CODSES UNION
SELECT 
CODSES,
'Permanencia en la sesión' AS ITEM,
DIREPROG3 AS OP,
CASE 
WHEN DIREPROG3 = '1' THEN 'Mal'
WHEN DIREPROG3 = '2' THEN 'Regular'
WHEN DIREPROG3 = '3' THEN 'Bien'
WHEN DIREPROG3 = '4' THEN 'Muy bien'
WHEN DIREPROG3 = '5' THEN 'Excelente'
END AS OPCION,
COUNT(DIREPROG3) AS RESULTADO
FROM FPROFESOR 
GROUP BY DIREPROG3, 'Permanencia en la sesión', CODSES UNION
SELECT 
CODSES,
'Apoyo (entrega de notas, asistencia, etc)' AS ITEM,
DIREPROG4 AS OP,
CASE 
WHEN DIREPROG4 = '1' THEN 'Mal'
WHEN DIREPROG4 = '2' THEN 'Regular'
WHEN DIREPROG4 = '3' THEN 'Bien'
WHEN DIREPROG4 = '4' THEN 'Muy bien'
WHEN DIREPROG4 = '5' THEN 'Excelente'
END AS OPCION,
COUNT(DIREPROG4) AS RESULTADO
FROM FPROFESOR 
GROUP BY DIREPROG4, 'Apoyo (entrega de notas, asistencia, etc)', CODSES UNION
SELECT 
CODSES,
'Puntualidad' AS ITEM,
DIREPROG5 AS OP,
CASE 
WHEN DIREPROG5 = '1' THEN 'Mal'
WHEN DIREPROG5 = '2' THEN 'Regular'
WHEN DIREPROG5 = '3' THEN 'Bien'
WHEN DIREPROG5 = '4' THEN 'Muy bien'
WHEN DIREPROG5 = '5' THEN 'Excelente'
END AS OPCION,
COUNT(DIREPROG5) AS RESULTADO
FROM FPROFESOR 
GROUP BY DIREPROG5, 'Puntualidad', CODSES ORDER BY ITEM,OP;