CREATE TABLE came.fmonitor (
  codfmon NUMBER NOT NULL,
  asistencia VARCHAR2(2 BYTE),
  entcaso VARCHAR2(2 BYTE),
  ussec VARCHAR2(2 BYTE),
  puntualidad VARCHAR2(2 BYTE),
  participacion VARCHAR2(2 BYTE),
  observacion VARCHAR2(300 BYTE),
  codper NUMBER,
  codses NUMBER,
  CONSTRAINT fmonitor_pk PRIMARY KEY (codfmon),
  CONSTRAINT fmonitor_persona_codper FOREIGN KEY (codper) REFERENCES came.persona (codper),
  CONSTRAINT fmonitor_sesion_codses FOREIGN KEY (codses) REFERENCES came.sesion (codses)
);