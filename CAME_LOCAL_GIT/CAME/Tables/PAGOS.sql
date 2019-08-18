CREATE TABLE came.pagos (
  codpag NUMBER NOT NULL,
  codper NUMBER NOT NULL,
  asumpag CHAR,
  estpag CHAR,
  cantdes NUMBER(*,0),
  condpag VARCHAR2(200 BYTE),
  obsepag VARCHAR2(200 BYTE),
  encpag VARCHAR2(100 BYTE),
  emailenc VARCHAR2(100 BYTE),
  telfenc VARCHAR2(20 BYTE),
  administrador NUMBER,
  fechareg DATE,
  PRIMARY KEY (codpag),
  CONSTRAINT persona_pagos FOREIGN KEY (administrador) REFERENCES came.persona (codper),
  CONSTRAINT per_pago FOREIGN KEY (codper) REFERENCES came.persona (codper)
);