CREATE TABLE came.tipoprog (
  codtippg NUMBER(*,0) NOT NULL,
  nomtipopg VARCHAR2(100 BYTE) NOT NULL,
  esttipopg CHAR NOT NULL,
  CONSTRAINT tipoprog_pk PRIMARY KEY (codtippg)
);
COMMENT ON COLUMN came.tipoprog.codtippg IS 'Código identificador del tipo de programa.';
COMMENT ON COLUMN came.tipoprog.nomtipopg IS 'Nombre del tipo de programa.';
COMMENT ON COLUMN came.tipoprog.esttipopg IS 'Flag de estado activo/inactivo del tipo de programa.';