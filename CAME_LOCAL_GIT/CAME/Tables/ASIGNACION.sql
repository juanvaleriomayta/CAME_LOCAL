CREATE TABLE came.asignacion (
  codasig NUMBER(*,0) NOT NULL,
  codper NUMBER(*,0) NOT NULL,
  coddetprog NUMBER(*,0) NOT NULL,
  fecreg DATE,
  estreg VARCHAR2(2 BYTE) DEFAULT 'A',
  CONSTRAINT asignacion_pk PRIMARY KEY (codasig),
  CONSTRAINT asignacion_persona FOREIGN KEY (codper) REFERENCES came.persona (codper),
  CONSTRAINT asignacion_prog_det FOREIGN KEY (coddetprog) REFERENCES came.prog_det (coddetprog)
);
COMMENT ON COLUMN came.asignacion.codasig IS 'Código identificador de asignación.';
COMMENT ON COLUMN came.asignacion.codper IS 'Código identificador de la persona(de tipo participante o estudiante).';
COMMENT ON COLUMN came.asignacion.coddetprog IS 'Código identificador del detalle del programa.';
COMMENT ON COLUMN came.asignacion.estreg IS 'A';