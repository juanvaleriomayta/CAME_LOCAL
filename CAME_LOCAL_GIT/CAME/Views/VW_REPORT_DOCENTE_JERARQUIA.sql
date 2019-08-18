CREATE OR REPLACE FORCE VIEW came.vw_report_docente_jerarquia (codper,codemp,codare,nivjer,nomjer) AS
SELECT PERSONA.CODPER,PERSONA.CODEMP,PERSONA.CODARE,PERSONA_DET.NIVJER,JERARQUIA.NOMJER FROM PERSONA 
INNER JOIN PERSONA_DET
ON PERSONA_DET.CODPER = PERSONA.CODPER
LEFT JOIN JERARQUIA
ON JERARQUIA.CODJER = PERSONA_DET.NIVJER;