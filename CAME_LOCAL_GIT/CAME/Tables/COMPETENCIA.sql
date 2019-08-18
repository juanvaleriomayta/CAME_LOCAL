CREATE TABLE came.competencia (
  codcom NUMBER NOT NULL,
  nomcom VARCHAR2(100 BYTE) NOT NULL,
  codare NUMBER,
  CONSTRAINT competencia_pk PRIMARY KEY (codcom),
  CONSTRAINT competencia_area FOREIGN KEY (codare) REFERENCES came.area (codare)
);