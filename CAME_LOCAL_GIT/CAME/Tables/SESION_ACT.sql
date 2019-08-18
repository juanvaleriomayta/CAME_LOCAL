CREATE TABLE came.sesion_act (
  codsesact NUMBER NOT NULL,
  horaini VARCHAR2(10 BYTE),
  horafin VARCHAR2(10 BYTE),
  codses NUMBER,
  descact VARCHAR2(100 BYTE),
  CONSTRAINT sesionact_sesion FOREIGN KEY (codses) REFERENCES came.sesion (codses)
);
COMMENT ON COLUMN came.sesion_act.horaini IS 'Hora de inicio de la actividad';
COMMENT ON COLUMN came.sesion_act.codses IS 'Código identificador de la sesión';
COMMENT ON COLUMN came.sesion_act.descact IS 'Descripción de la actividad a realizar en la sesión';