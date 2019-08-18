CREATE OR REPLACE FORCE VIEW came.vw_participante (codigo,dni,imgper,nombre,apellido,email,celular,direccion,nacimiento,lugarnacimiento,estadocivil,codigodet,conyuge,conyugeprof,teleftrab,emailtrab,areatrab,yearpuesto,numpercargo,jefe,jefecargo,jefetelf,jefemail,actividadper,tieneauto,marcaauto,placaauto,gradoper,uniper,espper,proaca1,duraca1,insaca1,proaca2,duraca2,insaca2,proaca3,duraca3,insaca3,seguro,telfseguro,emergencia,emergenciatelf,codempresa,empresa,programa,proceso,tipoper,estado) AS
SELECT PERSONA.CODPER AS "CODIGO",
  PERSONA.DNIPER AS "DNI",
  PERSONA.IMGPER,
PERSONA.NOMPER AS "NOMBRE",
PERSONA.APEPER AS "APELLIDO",
PERSONA.EMAILPER AS "EMAIL",
PERSONA.CELPER AS "CELULAR",
PERSONA.DIRPER AS "DIRECCION",
TO_CHAR(PERSONA.FECHPER,'DD/MM/YYYY') AS "NACIMIENTO",
PERSONA.LUGNAC AS "LUGARNACIMIENTO",
PERSONA.ESTCIV AS "ESTADOCIVIL",
PERSONA_DET.CODPERDET AS "CODIGODET",
PERSONA_DET.CONYUGE AS "CONYUGE",
PERSONA_DET.PROFCONY AS "CONYUGEPROF",
PERSONA_DET.TELFTRAB AS "TELEFTRAB",
PERSONA_DET.EMAILTRAB AS "EMAILTRAB",
PERSONA_DET.AREATRAB AS "AREATRAB",
PERSONA_DET.YEARPUESTO AS "YEARPUESTO",
PERSONA_DET.NUMPERCARGO AS "NUMPERCARGO",
PERSONA_DET.JEFEMP AS "JEFE",
PERSONA_DET.JEFCARGO AS "JEFECARGO",
PERSONA_DET.JEFTELF AS "JEFETELF",
PERSONA_DET.JEFEMAIL AS "JEFEMAIL",
PERSONA_DET.ACTPER AS "ACTIVIDADPER",
PERSONA_DET.AUTOPER AS "TIENEAUTO",
PERSONA_DET.MARCAUT AS "MARCAAUTO",
PERSONA_DET.PLACAUT AS "PLACAAUTO",
PERSONA_DET.GRAPER AS "GRADOPER",
PERSONA_DET.UNIPER AS "UNIPER",
PERSONA_DET.ESPPER AS "ESPPER",
PERSONA_DET.PROACA1 AS "PROACA1",
PERSONA_DET.DURACA1 AS "DURACA1",
PERSONA_DET.INSACA1 AS "INSACA1",
PERSONA_DET.PROACA2 AS "PROACA2",
PERSONA_DET.DURACA2 AS "DURACA2",
PERSONA_DET.INSACA2 AS "INSACA2",
PERSONA_DET.PROACA3 AS "PROACA3",
PERSONA_DET.DURACA3 AS "DURACA3",
PERSONA_DET.INSACA3 AS "INSACA3",
PERSONA_DET.SEGURO AS "SEGURO",
PERSONA_DET.TELFSEGURO AS "TELFSEGURO",
PERSONA_DET.EMERNOMB AS "EMERGENCIA",
PERSONA_DET.EMERTELF AS "EMERGENCIATELF",
EMPRESA.CODEMP AS "CODEMPRESA",
EMPRESA.NOMBEMP AS "EMPRESA",
REG.CODDETPROG as "PROGRAMA",
REG.ESTREG AS "PROCESO",
PERSONA.TIPOPER AS "TIPOPER",
ENTREVISTA.ESTENT AS "ESTADO"
FROM PERSONA INNER JOIN ASIGNACION REG ON PERSONA.CODPER = REG.CODPER
INNER JOIN PROG_DET ON PROG_DET.CODDETPROG = REG.CODDETPROG
INNER JOIN ENTREVISTA ON PERSONA.CODPER = ENTREVISTA.CODPER
INNER JOIN PROGRAMA ON PROG_DET.CODPROG = PROGRAMA.CODPROG
INNER JOIN PERSONA_DET ON PERSONA.CODPER = PERSONA_DET.CODPER 
INNER JOIN EMPRESA ON PERSONA.CODEMP = EMPRESA.CODEMP;