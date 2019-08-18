CREATE TABLE came.asigcoach (
  codasicoa NUMBER NOT NULL,
  codcoach NUMBER NOT NULL,
  codper NUMBER NOT NULL,
  coddetprog NUMBER NOT NULL,
  estasicoa CHAR DEFAULT 'A',
  CONSTRAINT asigcoach_pk PRIMARY KEY (codasicoa),
  CONSTRAINT asigcoach_coach FOREIGN KEY (codcoach) REFERENCES came.persona (codper),
  CONSTRAINT asigcoach_coddetprog FOREIGN KEY (coddetprog) REFERENCES came.prog_det (coddetprog),
  CONSTRAINT asigcoach_persona FOREIGN KEY (codper) REFERENCES came.persona (codper)
);
COMMENT ON COLUMN came.asigcoach.codasicoa IS 'Código autogenerado';
COMMENT ON COLUMN came.asigcoach.codcoach IS 'Código de persona COACH';
COMMENT ON COLUMN came.asigcoach.codper IS 'Código de persona Alumno';
COMMENT ON COLUMN came.asigcoach.coddetprog IS 'Código de detalle programa';
COMMENT ON COLUMN came.asigcoach.estasicoa IS 'Estado';