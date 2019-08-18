CREATE TABLE came.sesion_anexo (
  codsesane NUMBER NOT NULL,
  codses NUMBER NOT NULL,
  codbib NUMBER NOT NULL,
  fecsesane TIMESTAMP,
  CONSTRAINT sesion_anexo_pk PRIMARY KEY (codsesane),
  CONSTRAINT sesane_bib FOREIGN KEY (codbib) REFERENCES came.biblioteca (codbib),
  CONSTRAINT sesane_ses FOREIGN KEY (codses) REFERENCES came.sesion (codses)
);
COMMENT ON COLUMN came.sesion_anexo.codses IS 'CODIGO DE LA SESION';
COMMENT ON COLUMN came.sesion_anexo.codbib IS 'CODIGO DE LA BIBLIOTECA';
COMMENT ON COLUMN came.sesion_anexo.fecsesane IS 'FECHA DE ANEXADO DOCUMENTO';