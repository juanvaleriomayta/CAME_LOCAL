CREATE TABLE came.area (
  codare NUMBER NOT NULL,
  nomare VARCHAR2(50 BYTE) NOT NULL,
  abrare VARCHAR2(20 BYTE) NOT NULL,
  CONSTRAINT area_pk PRIMARY KEY (codare)
);
COMMENT ON COLUMN came.area.codare IS 'Código autogenerado';
COMMENT ON COLUMN came.area.nomare IS 'Nombre del área';
COMMENT ON COLUMN came.area.abrare IS 'Abreviatura de área';