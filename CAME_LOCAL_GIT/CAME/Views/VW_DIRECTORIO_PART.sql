CREATE OR REPLACE FORCE VIEW came.vw_directorio_part (codper,coddetprog,fechini,fechfin,frecuencia,hora,fotdirec,director,cargodire,nombempdire,celdire,fechdire,emaildire,nomprog,imgper,apenom,cargoper,nombemp,celper,fechper,inigen,emailper) AS
SELECT 
ASIGNACION.CODPER,
ASIGNACION.CODDETPROG,
TO_CHAR(PROG_DET.FECHINI, 'dd-mm-yyyy')AS FECHINI,
TO_CHAR(PROG_DET.FECHFIN, 'dd-mm-yyyy')AS FECHFIN, 
PROG_DET.FRECDETPROG AS Frecuencia, --frecuencia
PROG_DET.HORINIFIN AS Hora, --hora
(DIRE.imgper) as FOTDIREC,
(UPPER(DIRE.Apeper) ||', ' || INITCAP(DIRE.Nomper))AS DIRECTOR,
INITCAP(DIRE.Cargoper) AS CargoDire,
INITCAP(empDire.Nombemp)AS NombempDire,
--INITCAP(DIRE.Dirper)AS DircDire,
REPLACE(DIRE.Celper,'null','')as celDire,
TO_CHAR(DIRE.Fechper,'dd "de" month', 'NLS_DATE_LANGUAGE=SPANISH')AS FechDire,
(ALUM.Emailper)as EmailDire,
UPPER(Programa.Nomprog)AS Nomprog,
ALUM.IMGPER,
(UPPER(ALUM.Apeper) ||', ' || INITCAP(ALUM.Nomper))AS APENOM,
INITCAP(ALUM.Cargoper) AS Cargoper,
INITCAP(Empresa.Nombemp)AS Nombemp,
--INITCAP(Empresa.Diremp)AS Diremp,
--INITCAP(ALUM.Dirper)AS Dirper,
REPLACE(ALUM.Celper,'null','')as Celper,
TO_CHAR(ALUM.Fechper,'dd "de" month', 'NLS_DATE_LANGUAGE=SPANISH')AS Fechper,
(Programa.Iniprog || ' - ' || Prog_Det.Gendetprog)as INIGEN,
ALUM.Emailper 
FROM ASIGNACION
LEFT JOIN PERSONA ALUM ON ALUM.CODPER = ASIGNACION.CODPER
LEFT JOIN EMPRESA ON Empresa.Codemp = ALUM.Codemp 
LEFT JOIN Prog_Det on Prog_Det.CODDETPROG = ASIGNACION.CODDETPROG
LEFT JOIN PERSONA DIRE ON dire.codper = prog_det.codper
LEFT JOIN EMPRESA empDire ON empDire.Codemp = DIRE.Codemp 
LEFT JOIN PROGRAMA ON Programa.Codprog = Prog_Det.Codprog
WHERE ALUM.TIPOPER = 'ES' order by ALUM.Apeper asc;