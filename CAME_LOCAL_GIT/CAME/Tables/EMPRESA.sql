CREATE TABLE came.empresa (
  codemp NUMBER NOT NULL,
  rucemp VARCHAR2(30 BYTE),
  nombemp VARCHAR2(100 BYTE),
  codubi NUMBER,
  diremp VARCHAR2(200 BYTE),
  actemp VARCHAR2(100 BYTE),
  PRIMARY KEY (codemp),
  CONSTRAINT ubi_emp FOREIGN KEY (codubi) REFERENCES came.ubigeo (codubi)
);