CREATE OR REPLACE FORCE VIEW came.vw_report_docente_area (codper,codemp,codare,nomare) AS
SELECT PERSONA.CODPER,PERSONA.CODEMP,PERSONA.CODARE,NOMARE FROM PERSONA 
INNER JOIN AREA
ON AREA.CODARE = PERSONA.CODARE;