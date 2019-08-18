CREATE TABLE came.notificacion (
  codnot NUMBER NOT NULL,
  coddetprog NUMBER,
  mennot VARCHAR2(100 BYTE),
  fecnot TIMESTAMP,
  PRIMARY KEY (codnot),
  CONSTRAINT noti_prog_det_coddetprog FOREIGN KEY (coddetprog) REFERENCES came.prog_det (coddetprog)
);
COMMENT ON COLUMN came.notificacion.codnot IS 'Código identificador del registro';
COMMENT ON COLUMN came.notificacion.coddetprog IS 'Código de detalle de programa';
COMMENT ON COLUMN came.notificacion.mennot IS 'Mensaje de la notificación';
COMMENT ON COLUMN came.notificacion.fecnot IS 'Fecha de notificación';