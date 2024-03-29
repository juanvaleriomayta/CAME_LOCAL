CREATE OR REPLACE FORCE VIEW came.vw_rfpar_ca (codses,item,op,opcion,resultado) AS
SELECT 
CODSES,
'Análisis personal del caso' AS ITEM,
CASORPT1 as OP,
CASE 
WHEN CASORPT1 = '1' THEN 'Mal'
WHEN CASORPT1 = '2' THEN 'Regular'
WHEN CASORPT1 = '3' THEN 'Bien'
WHEN CASORPT1 = '4' THEN 'Muy bien'
WHEN CASORPT1 = '5' THEN 'Excelente'
END AS OPCION,
COUNT(CASORPT1) AS RESULTADO
FROM FPARTICIPANTE
GROUP BY CASORPT1, 'Análisis personal del caso', CODSES  UNION
SELECT 
CODSES,
'Calidad de discusión en equipo' AS ITEM,
CASORPT2 as OP,
CASE 
WHEN CASORPT2 = '1' THEN 'Mal'
WHEN CASORPT2 = '2' THEN 'Regular'
WHEN CASORPT2 = '3' THEN 'Bien'
WHEN CASORPT2 = '4' THEN 'Muy bien'
WHEN CASORPT2 = '5' THEN 'Excelente'
END AS OPCION,
COUNT(CASORPT2) AS RESULTADO
FROM FPARTICIPANTE
GROUP BY CASORPT2, 'Calidad de discusión en equipo', CODSES ORDER BY ITEM,OP;