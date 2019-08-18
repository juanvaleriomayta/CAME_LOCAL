CREATE TABLE came.coaching (
  codcoa NUMBER NOT NULL,
  horini VARCHAR2(7 BYTE) NOT NULL,
  horfin VARCHAR2(7 BYTE) NOT NULL,
  lugar VARCHAR2(400 BYTE) NOT NULL,
  descri VARCHAR2(500 BYTE) NOT NULL,
  codasicoa NUMBER NOT NULL,
  fecha DATE,
  CONSTRAINT coaching_pk PRIMARY KEY (codcoa),
  CONSTRAINT coaching_asigcoach FOREIGN KEY (codasicoa) REFERENCES came.asigcoach (codasicoa)
);
COMMENT ON COLUMN came.coaching.codcoa IS 'Codigo Autogenerado';
COMMENT ON COLUMN came.coaching.horini IS 'Hora incio';
COMMENT ON COLUMN came.coaching.horfin IS 'Hora Fin';
COMMENT ON COLUMN came.coaching.codasicoa IS 'Codigo de Asignacion';