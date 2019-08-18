CREATE TABLE came.f_imp_final_prof (
  codimpfinalprof NUMBER(38) NOT NULL,
  rpta CHAR,
  codper NUMBER(38),
  codimpfinal NUMBER(38),
  pregunta VARCHAR2(20 BYTE),
  dniper CHAR(8 BYTE),
  codfase NUMBER,
  codses NUMBER,
  CONSTRAINT f_imp_final_prof PRIMARY KEY (codimpfinalprof)
);