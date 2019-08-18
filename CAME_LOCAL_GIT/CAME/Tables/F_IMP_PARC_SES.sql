CREATE TABLE came.f_imp_parc_ses (
  codimpparses NUMBER(*,0) NOT NULL,
  rpta CHAR,
  codses NUMBER(*,0),
  codimpparc NUMBER(*,0),
  pregunta VARCHAR2(20 BYTE),
  dniper CHAR(8 BYTE),
  codfase NUMBER,
  CONSTRAINT f_imp_parc_ses_pk PRIMARY KEY (codimpparses)
);