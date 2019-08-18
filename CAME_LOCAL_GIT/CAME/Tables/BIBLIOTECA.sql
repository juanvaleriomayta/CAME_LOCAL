CREATE TABLE came.biblioteca (
  codbib NUMBER NOT NULL,
  nomb VARCHAR2(200 BYTE),
  tam VARCHAR2(20 BYTE),
  fecha DATE,
  tipcon VARCHAR2(200 BYTE),
  ubic VARCHAR2(20 BYTE),
  priv CHAR DEFAULT 'E' NOT NULL,
  codtippg VARCHAR2(100 BYTE),
  codsubare CHAR(4 BYTE),
  PRIMARY KEY (codbib),
  CONSTRAINT biblioteca_subarea_codsubare FOREIGN KEY (codsubare) REFERENCES came.subarea (codsubare)
);
COMMENT ON COLUMN came.biblioteca.codbib IS 'Codigo identificador del documento';
COMMENT ON COLUMN came.biblioteca.nomb IS 'Nombre del documento';
COMMENT ON COLUMN came.biblioteca.tam IS 'Tamaño del documento';
COMMENT ON COLUMN came.biblioteca.fecha IS 'Fecha en la que se guardo el documento';
COMMENT ON COLUMN came.biblioteca.tipcon IS 'Tipo del contenido del documento';
COMMENT ON COLUMN came.biblioteca.ubic IS 'Ubicacion donde se guardara el archivo';
COMMENT ON COLUMN came.biblioteca.priv IS 'Flag para que pueda o no ver el Participante';