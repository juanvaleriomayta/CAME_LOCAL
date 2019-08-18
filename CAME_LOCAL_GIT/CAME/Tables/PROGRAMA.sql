CREATE TABLE came.programa (
  codprog NUMBER(*,0) NOT NULL,
  nomprog VARCHAR2(200 BYTE) NOT NULL,
  estprog CHAR DEFAULT 'A' NOT NULL,
  codtippg NUMBER(*,0) NOT NULL,
  iniprog VARCHAR2(20 BYTE),
  codare NUMBER,
  codemp NUMBER,
  CONSTRAINT programa_pk PRIMARY KEY (codprog),
  CONSTRAINT empresa_programa FOREIGN KEY (codemp) REFERENCES came.empresa (codemp),
  CONSTRAINT programa_area FOREIGN KEY (codare) REFERENCES came.area (codare),
  CONSTRAINT programa_tipoprog FOREIGN KEY (codtippg) REFERENCES came.tipoprog (codtippg)
);
COMMENT ON COLUMN came.programa.codprog IS 'Código identificador del programa.';
COMMENT ON COLUMN came.programa.nomprog IS 'Nombre del programa.';
COMMENT ON COLUMN came.programa.estprog IS 'Flag de estado activo/inactivo del programa.';
COMMENT ON COLUMN came.programa.codtippg IS 'Código identificador del tipo de programa.';
COMMENT ON COLUMN came.programa.iniprog IS 'Abrebiación del programa';
COMMENT ON COLUMN came.programa.codare IS 'Codigo de Area';