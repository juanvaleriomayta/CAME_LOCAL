CREATE TABLE came.sesion_det (
  coddetses NUMBER(*,0) NOT NULL,
  codses NUMBER(*,0) NOT NULL,
  asistencia CHAR,
  participacion NUMBER(*,0),
  caso NUMBER(*,0),
  control NUMBER(*,0),
  examparc NUMBER(*,0),
  examfinal NUMBER(*,0),
  trabajo NUMBER(*,0),
  promedios FLOAT,
  codasig NUMBER,
  caso2 NUMBER,
  CONSTRAINT det_sesion_pk PRIMARY KEY (coddetses),
  CONSTRAINT det_sesion_asignacion FOREIGN KEY (codasig) REFERENCES came.asignacion (codasig),
  CONSTRAINT det_sesion_sesiones FOREIGN KEY (codses) REFERENCES came.sesion (codses)
);
COMMENT ON COLUMN came.sesion_det.coddetses IS 'Código identificador del detalle de la sesión.';
COMMENT ON COLUMN came.sesion_det.codses IS 'Código identificador de la sesión.';
COMMENT ON COLUMN came.sesion_det.asistencia IS 'Asistencia del participante.';
COMMENT ON COLUMN came.sesion_det.participacion IS 'Nota de particicipacion.';
COMMENT ON COLUMN came.sesion_det.caso IS 'Nota del caso del participante.';
COMMENT ON COLUMN came.sesion_det.control IS 'Nota de control del participante.';
COMMENT ON COLUMN came.sesion_det.examparc IS 'Nota de examen parcial del participante.';
COMMENT ON COLUMN came.sesion_det.examfinal IS 'Nota de examen final del participante.';
COMMENT ON COLUMN came.sesion_det.trabajo IS 'Nota de trabajo del participante.';
COMMENT ON COLUMN came.sesion_det.promedios IS 'Promedio de la sesión del participante.';
COMMENT ON COLUMN came.sesion_det.codasig IS 'Código identificador de asignación del participante.';