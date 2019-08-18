CREATE OR REPLACE FORCE VIEW came.vw_listprograma (programa,abreviatura,tipo,empresa,nivger,gendetprog,coddetprog,sesiones,fechini,fechfin,liminac,frecuencia) AS
select PROGRAMA.NOMPROG as PROGRAMA,Programa.Iniprog as ABREVIATURA,Tipoprog.nomtipopg AS TIPO, empresa.nombemp AS EMPRESA, NVL(Prog_Det.Nivger,'-') as NIVGER,Prog_Det.Gendetprog,Prog_Det.Coddetprog ,count(Sesion.Nomses)as sesiones

,TO_CHAR(PROG_DET.FECHINI,'DD/MM/YYYY') AS FECHINI,
TO_CHAR(PROG_DET.FECHFIN,'DD/MM/YYYY') AS FECHFIN
,Liminac,Prog_Det.Frecdetprog AS FRECUENCIA from Prog_Det
inner join fase on Fase.Coddetprog =Prog_Det.Coddetprog
inner join sesion on Sesion.Codfase = Fase.Codfase
INNER JOIN PROGRAMA ON PROGRAMA.CODPROG = PROG_DET.CODPROG
INNER JOIN TIPOPROG ON Tipoprog.Codtippg = Programa.Codtippg
INNER JOIN PERSONA ON persona.codper = prog_det.codper
INNER JOIN EMPRESA ON empresa.codemp = persona.codemp
Group By Prog_Det.Coddetprog,liminac,PROGRAMA.NOMPROG,Tipoprog.nomtipopg,Prog_Det.Gendetprog,Prog_Det.Nivger,Programa.Iniprog,PROG_DET.FECHINI,PROG_DET.FECHFIN,Prog_Det.Frecdetprog,empresa.nombemp;