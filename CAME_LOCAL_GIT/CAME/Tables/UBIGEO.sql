CREATE TABLE came.ubigeo (
  codubi NUMBER(*,0) NOT NULL,
  depubi VARCHAR2(50 BYTE) NOT NULL,
  provubi VARCHAR2(50 BYTE) NOT NULL,
  distubi VARCHAR2(50 BYTE) NOT NULL,
  CONSTRAINT ubigeo_pk PRIMARY KEY (codubi)
);
COMMENT ON COLUMN came.ubigeo.codubi IS 'Código identificador del ubigeo.';
COMMENT ON COLUMN came.ubigeo.depubi IS 'Departamento.';
COMMENT ON COLUMN came.ubigeo.provubi IS 'Provincia.';
COMMENT ON COLUMN came.ubigeo.distubi IS 'Distrito.';