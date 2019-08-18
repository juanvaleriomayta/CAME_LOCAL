CREATE TABLE came.f_imp_parc (
  codimpparc NUMBER(*,0) NOT NULL,
  rpta01 CHAR,
  rpta02 CHAR,
  rpta03 NVARCHAR2(200),
  rpta07 CHAR,
  rpta07_1 NVARCHAR2(200),
  rpta08 NVARCHAR2(200),
  rpta06_1 CHAR,
  rpta06_2 CHAR,
  rpta06_3 CHAR,
  rpta06_4 CHAR,
  rpta06_5 CHAR,
  rpta04_1 CHAR,
  dniper CHAR(8 BYTE),
  codfase NUMBER,
  fecevaimp DATE,
  CONSTRAINT f_imp_parc_pk PRIMARY KEY (codimpparc)
);