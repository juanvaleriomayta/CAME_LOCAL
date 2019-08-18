CREATE TABLE came.entrevista (
  codent NUMBER NOT NULL,
  codper NUMBER,
  fecent DATE,
  pre1 VARCHAR2(250 BYTE),
  pre2 VARCHAR2(250 BYTE),
  coment VARCHAR2(250 BYTE),
  entrevistador NUMBER,
  estent CHAR,
  PRIMARY KEY (codent),
  CONSTRAINT persona_entrevista FOREIGN KEY (entrevistador) REFERENCES came.persona (codper),
  CONSTRAINT per_entrevista FOREIGN KEY (codper) REFERENCES came.persona (codper)
);