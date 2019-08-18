CREATE TABLE came.fdprograma (
  cod_fdprog NUMBER(38) NOT NULL,
  profrpt1 VARCHAR2(1 BYTE),
  profrpt2 VARCHAR2(1 BYTE),
  profrpt3 VARCHAR2(1 BYTE),
  profrpt4 VARCHAR2(1 BYTE),
  puntrpt1 VARCHAR2(1 BYTE),
  puntrpt2 VARCHAR2(1 BYTE),
  areaoporprof VARCHAR2(1000 BYTE),
  dircprogrpt1 VARCHAR2(1 BYTE),
  dircprogrpt2 VARCHAR2(1 BYTE),
  temrpt1 VARCHAR2(1 BYTE),
  temrpt2 VARCHAR2(1 BYTE),
  temsug VARCHAR2(1000 BYTE),
  partrpt1 VARCHAR2(1 BYTE),
  partrpt2 VARCHAR2(1 BYTE),
  sesrpt VARCHAR2(1 BYTE),
  servrpt1 VARCHAR2(1 BYTE),
  servrpt2 VARCHAR2(1 BYTE),
  sugerencia VARCHAR2(1000 BYTE),
  codses NUMBER(38) NOT NULL,
  PRIMARY KEY (cod_fdprog),
  CONSTRAINT fdprograma_sesion FOREIGN KEY (codses) REFERENCES came.sesion (codses)
);