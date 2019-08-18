CREATE TABLE came.prog_det (
  coddetprog NUMBER(*,0) NOT NULL,
  fechini DATE NOT NULL,
  fechfin DATE NOT NULL,
  estdetprog CHAR DEFAULT 'E' NOT NULL,
  gendetprog VARCHAR2(10 BYTE) NOT NULL,
  codper NUMBER(*,0) NOT NULL,
  codprog NUMBER(*,0) NOT NULL,
  frecdetprog VARCHAR2(20 BYTE),
  horinifin VARCHAR2(20 BYTE),
  liminac NUMBER(4),
  nivger VARCHAR2(50 BYTE),
  modlprog VARCHAR2(50 BYTE),
  empprog NUMBER(4),
  CONSTRAINT prog_det_pk PRIMARY KEY (coddetprog),
  CONSTRAINT prog_det_persona FOREIGN KEY (codper) REFERENCES came.persona (codper),
  CONSTRAINT prog_det_programa FOREIGN KEY (codprog) REFERENCES came.programa (codprog)
);
COMMENT ON COLUMN came.prog_det.coddetprog IS 'Código identificador del detalle del programa.';
COMMENT ON COLUMN came.prog_det.fechini IS 'Fecha de inicio de un programa.';
COMMENT ON COLUMN came.prog_det.fechfin IS 'Fecha final de un programa.';
COMMENT ON COLUMN came.prog_det.estdetprog IS 'Flag de estado activo/inactivo del detalle del programa.';
COMMENT ON COLUMN came.prog_det.gendetprog IS 'Número de la generación del programa.';
COMMENT ON COLUMN came.prog_det.codper IS 'Código identificador de la persona(de tipo participante o estudiante).';
COMMENT ON COLUMN came.prog_det.codprog IS 'Código identificador del programa.';
COMMENT ON COLUMN came.prog_det.frecdetprog IS 'Frecuencia del programa';
COMMENT ON COLUMN came.prog_det.horinifin IS 'Hora de inicio y fin en general de cada sesión';