CREATE TABLE came.auditoria (
  codaud NUMBER NOT NULL,
  usuario VARCHAR2(250 BYTE),
  evento VARCHAR2(250 BYTE),
  valor NUMBER,
  coddetpro NUMBER,
  codbib VARCHAR2(20 BYTE),
  fecha TIMESTAMP,
  CONSTRAINT auditoria_pk PRIMARY KEY (codaud)
);