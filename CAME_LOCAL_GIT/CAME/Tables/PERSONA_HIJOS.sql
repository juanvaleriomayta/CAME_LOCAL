CREATE TABLE came.persona_hijos (
  codhij NUMBER NOT NULL,
  codperdet NUMBER,
  sexhij CHAR,
  fecnachi DATE,
  PRIMARY KEY (codhij),
  CONSTRAINT perdet_perhijos FOREIGN KEY (codperdet) REFERENCES came.persona_det (codperdet)
);