CREATE TABLE came.persona_det (
  codperdet NUMBER NOT NULL,
  codper NUMBER,
  conyuge VARCHAR2(100 BYTE),
  profcony VARCHAR2(100 BYTE),
  telftrab VARCHAR2(30 BYTE),
  emailtrab VARCHAR2(100 BYTE),
  areatrab VARCHAR2(30 BYTE),
  yearpuesto VARCHAR2(2 BYTE),
  numpercargo VARCHAR2(3 BYTE),
  jefemp VARCHAR2(200 BYTE),
  jefcargo VARCHAR2(30 BYTE),
  jeftelf VARCHAR2(30 BYTE),
  jefemail VARCHAR2(100 BYTE),
  actper VARCHAR2(450 BYTE),
  autoper CHAR,
  marcaut VARCHAR2(30 BYTE),
  placaut VARCHAR2(30 BYTE),
  seguro VARCHAR2(100 BYTE),
  telfseguro VARCHAR2(30 BYTE),
  emernomb VARCHAR2(100 BYTE),
  emertelf VARCHAR2(30 BYTE),
  imgorg VARCHAR2(100 BYTE),
  graper VARCHAR2(100 BYTE),
  uniper VARCHAR2(100 BYTE),
  espper VARCHAR2(100 BYTE),
  proaca1 VARCHAR2(100 BYTE),
  duraca1 VARCHAR2(100 BYTE),
  insaca1 VARCHAR2(100 BYTE),
  proaca2 VARCHAR2(100 BYTE),
  duraca2 VARCHAR2(100 BYTE),
  insaca2 VARCHAR2(100 BYTE),
  proaca3 VARCHAR2(100 BYTE),
  duraca3 VARCHAR2(100 BYTE),
  insaca3 VARCHAR2(100 BYTE),
  co1 CHAR,
  co2 CHAR,
  co3 CHAR,
  co4 CHAR,
  co5 CHAR,
  int1 CHAR,
  int2 CHAR,
  int3 CHAR,
  int4 CHAR,
  int5 CHAR,
  enviodatos CHAR,
  gerencia VARCHAR2(20 BYTE),
  jefatura VARCHAR2(20 BYTE),
  supervisor VARCHAR2(20 BYTE),
  autorizacion VARCHAR2(20 BYTE),
  doccv VARCHAR2(1000 BYTE),
  rescuv VARCHAR2(1000 BYTE),
  nivjer NUMBER,
  PRIMARY KEY (codperdet),
  CONSTRAINT perdet_per FOREIGN KEY (codper) REFERENCES came.persona (codper),
  CONSTRAINT persona_det_jerarquia_codjer FOREIGN KEY (nivjer) REFERENCES came.jerarquia (codjer)
);
COMMENT ON COLUMN came.persona_det.codperdet IS 'Código identificador de detalle persona';
COMMENT ON COLUMN came.persona_det.codper IS 'Código de la persona';
COMMENT ON COLUMN came.persona_det.telftrab IS 'Telefono de trabajo del participante';
COMMENT ON COLUMN came.persona_det.jefemp IS 'Nombre del jefe del participante';
COMMENT ON COLUMN came.persona_det.autoper IS 'Tiene auto el participante(SI/NO)';
COMMENT ON COLUMN came.persona_det.imgorg IS 'Nombre del archivo de organigrama';
COMMENT ON COLUMN came.persona_det.graper IS 'Grado de estudios del participante';
COMMENT ON COLUMN came.persona_det.insaca1 IS 'Institucion en que se realizo el programa1';
COMMENT ON COLUMN came.persona_det.insaca2 IS 'Institucion en que se realizo el programa2';
COMMENT ON COLUMN came.persona_det.duraca3 IS 'Duracion del programa3';
COMMENT ON COLUMN came.persona_det.co1 IS 'Conocimiento Comercial/Marketing';
COMMENT ON COLUMN came.persona_det.co2 IS 'Conocimiento Operaciones/Logística';
COMMENT ON COLUMN came.persona_det.co3 IS 'Conocimiento Recursos Humanos';
COMMENT ON COLUMN came.persona_det.co4 IS 'Conocimiento Contabilidad/Finanzas';
COMMENT ON COLUMN came.persona_det.co5 IS 'Conocimiento Dirección/Liderazgo';
COMMENT ON COLUMN came.persona_det.int1 IS 'Interes Comercial/Marketing';
COMMENT ON COLUMN came.persona_det.int2 IS 'Interes Operaciones/Logística';
COMMENT ON COLUMN came.persona_det.int3 IS 'Interes Recursos Humanos';
COMMENT ON COLUMN came.persona_det.int4 IS 'Interes Contabilidad/Finanzas';
COMMENT ON COLUMN came.persona_det.int5 IS 'Interes Dirección/Liderazgo';
COMMENT ON COLUMN came.persona_det.enviodatos IS 'Envia datos si los desea el participante(SI-1/No-0)';