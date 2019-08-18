CREATE TABLE came.fprofesor (
  cod_fprof NUMBER(38) NOT NULL,
  direprog1 VARCHAR2(1 BYTE),
  direprog2 VARCHAR2(1 BYTE),
  direprog3 VARCHAR2(1 BYTE),
  direprog4 VARCHAR2(1 BYTE),
  direprog5 VARCHAR2(1 BYTE),
  part1 VARCHAR2(1 BYTE),
  part2 VARCHAR2(1 BYTE),
  tem1 VARCHAR2(1 BYTE),
  tem2 VARCHAR2(1 BYTE),
  sugerencia VARCHAR2(1000 BYTE),
  codses NUMBER(38) NOT NULL,
  codper NUMBER,
  PRIMARY KEY (cod_fprof),
  CONSTRAINT fprofesor_sesion FOREIGN KEY (codses) REFERENCES came.sesion (codses),
  CONSTRAINT persona_fprofesor_codper FOREIGN KEY (codper) REFERENCES came.persona (codper)
);