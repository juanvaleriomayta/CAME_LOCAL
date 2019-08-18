CREATE TABLE came.pagos_det (
  codpagdet NUMBER NOT NULL,
  codpag NUMBER NOT NULL,
  fecpag DATE,
  montpag NUMBER(10,2),
  PRIMARY KEY (codpagdet),
  CONSTRAINT pag_pagdet FOREIGN KEY (codpag) REFERENCES came.pagos (codpag)
);