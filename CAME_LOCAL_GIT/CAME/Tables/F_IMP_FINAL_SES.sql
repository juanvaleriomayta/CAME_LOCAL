CREATE TABLE came.f_imp_final_ses (
  codimpfinalses NUMBER(38) NOT NULL,
  rpta CHAR,
  codses NUMBER(38),
  codimpfinal NUMBER(38),
  pregunta VARCHAR2(20 BYTE),
  dniper CHAR(8 BYTE),
  codfase NUMBER,
  CONSTRAINT f_imp_final_ses PRIMARY KEY (codimpfinalses)
);