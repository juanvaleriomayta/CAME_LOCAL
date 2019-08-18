CREATE TABLE came.f_imp_parc_prof (
  codimpparprof NUMBER(*,0) NOT NULL,
  rpta CHAR,
  codper NUMBER(*,0),
  codimpparc NUMBER(*,0),
  pregunta VARCHAR2(20 BYTE),
  dniper CHAR(8 BYTE),
  codfase NUMBER,
  codses NUMBER,
  CONSTRAINT f_imp_parc_prof_pk PRIMARY KEY (codimpparprof)
);