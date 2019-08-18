CREATE TABLE came.asigmonitor (
  codasimon NUMBER NOT NULL,
  codmonitor NUMBER,
  codper NUMBER,
  coddetprog NUMBER,
  estasimon CHAR DEFAULT 'A',
  CONSTRAINT asigmonitor_pk PRIMARY KEY (codasimon),
  CONSTRAINT asigmon_mon FOREIGN KEY (codmonitor) REFERENCES came.persona (codper),
  CONSTRAINT asigmon_per FOREIGN KEY (codper) REFERENCES came.persona (codper),
  CONSTRAINT asigmon_progdet FOREIGN KEY (coddetprog) REFERENCES came.prog_det (coddetprog)
);
COMMENT ON COLUMN came.asigmonitor.codasimon IS 'Código Autogenerado';
COMMENT ON COLUMN came.asigmonitor.codmonitor IS 'Código del Monitor';
COMMENT ON COLUMN came.asigmonitor.codper IS 'Código del Participante';
COMMENT ON COLUMN came.asigmonitor.coddetprog IS 'Código del Detalle de Programa';
COMMENT ON COLUMN came.asigmonitor.estasimon IS 'Estado';