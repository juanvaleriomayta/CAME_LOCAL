CREATE TABLE came.fase (
  codfase NUMBER(*,0) NOT NULL,
  coddetprog NUMBER(*,0) NOT NULL,
  nomfase VARCHAR2(100 BYTE) NOT NULL,
  estfase CHAR,
  CONSTRAINT fases_pk PRIMARY KEY (codfase),
  CONSTRAINT fases_prog_det FOREIGN KEY (coddetprog) REFERENCES came.prog_det (coddetprog)
);
COMMENT ON COLUMN came.fase.codfase IS 'Código identificador de la fase.';
COMMENT ON COLUMN came.fase.coddetprog IS 'Código identificador del detalle del programa';
COMMENT ON COLUMN came.fase.nomfase IS 'Nombre de la fase.';