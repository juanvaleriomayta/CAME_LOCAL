CREATE TABLE came.fase_det (
  codfasdet NUMBER(*,0) NOT NULL,
  promfas FLOAT NOT NULL,
  codfase NUMBER(*,0) NOT NULL,
  codasig NUMBER(*,0) NOT NULL,
  CONSTRAINT fase_det_pk PRIMARY KEY (codfasdet),
  CONSTRAINT fase_det_asignacion FOREIGN KEY (codasig) REFERENCES came.asignacion (codasig),
  CONSTRAINT fase_det_fases FOREIGN KEY (codfase) REFERENCES came.fase (codfase)
);
COMMENT ON COLUMN came.fase_det.codfasdet IS 'Código identificador del detalle de fase.';
COMMENT ON COLUMN came.fase_det.promfas IS 'Promedio final del participante al final de la fase.';
COMMENT ON COLUMN came.fase_det.codfase IS 'Código identificador de la fase.';
COMMENT ON COLUMN came.fase_det.codasig IS 'Código identificador de asignación(persona de tipo estudiante)';