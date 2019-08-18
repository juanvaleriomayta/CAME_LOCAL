CREATE TABLE came.persona (
  codper NUMBER(*,0) NOT NULL,
  nomper VARCHAR2(100 BYTE) NOT NULL,
  apeper VARCHAR2(100 BYTE) NOT NULL,
  dniper CHAR(8 BYTE) NOT NULL,
  emailper VARCHAR2(100 BYTE) NOT NULL,
  sexper CHAR,
  celper CHAR(30 BYTE) NOT NULL,
  dirper VARCHAR2(200 BYTE) NOT NULL,
  tipoper NVARCHAR2(30) NOT NULL,
  estper CHAR NOT NULL,
  userper VARCHAR2(50 BYTE) NOT NULL,
  passper VARCHAR2(50 BYTE) NOT NULL,
  codubi NUMBER(*,0) NOT NULL,
  fechper DATE,
  imgper VARCHAR2(300 BYTE),
  cargoper VARCHAR2(150 BYTE),
  codemp NUMBER,
  lugnac VARCHAR2(100 BYTE),
  estciv VARCHAR2(50 BYTE),
  profper VARCHAR2(100 BYTE),
  iniper VARCHAR2(5 BYTE),
  nacnlper VARCHAR2(100 BYTE),
  codare NUMBER,
  CONSTRAINT persona_pk PRIMARY KEY (codper),
  CONSTRAINT persona_area FOREIGN KEY (codare) REFERENCES came.area (codare),
  CONSTRAINT persona_empresa FOREIGN KEY (codemp) REFERENCES came.empresa (codemp),
  CONSTRAINT persona_ubigeo FOREIGN KEY (codubi) REFERENCES came.ubigeo (codubi)
);
COMMENT ON COLUMN came.persona.codper IS 'Código identificador de la persona.';
COMMENT ON COLUMN came.persona.nomper IS 'Nombre de la persona.';
COMMENT ON COLUMN came.persona.apeper IS 'Apellido de la persona.';
COMMENT ON COLUMN came.persona.dniper IS 'Número de DNI de la persona.';
COMMENT ON COLUMN came.persona.emailper IS 'Correo electrónico de la persona.';
COMMENT ON COLUMN came.persona.sexper IS 'Sexo de la persona.';
COMMENT ON COLUMN came.persona.celper IS 'Número de celular de la persona.';
COMMENT ON COLUMN came.persona.dirper IS 'Dirección de la persona.';
COMMENT ON COLUMN came.persona.tipoper IS 'Tipo de persona(administrador, director, profesor o estudiante).';
COMMENT ON COLUMN came.persona.estper IS 'Flag de estado activo/inactivo de la persona.';
COMMENT ON COLUMN came.persona.userper IS 'Nombre de usuario de la persona.';
COMMENT ON COLUMN came.persona.passper IS 'Contraseña de la persona.';
COMMENT ON COLUMN came.persona.codubi IS 'Código identificador del ubigeo.';
COMMENT ON COLUMN came.persona.fechper IS 'Fecha de nacimiento de la persona';
COMMENT ON COLUMN came.persona.imgper IS 'Foto de la persona';
COMMENT ON COLUMN came.persona.cargoper IS 'Cargo que ocupa dentro de la empresa el participante.';
COMMENT ON COLUMN came.persona.codemp IS 'Código identificador de la empresa donde labora el participante.';
COMMENT ON COLUMN came.persona.lugnac IS 'Lugar de nacimiento de la persona';
COMMENT ON COLUMN came.persona.estciv IS 'Estado civil de la persona';
COMMENT ON COLUMN came.persona.profper IS 'Profesión que desempeña la persona';
COMMENT ON COLUMN came.persona.iniper IS 'Iniciales de los nombres de las personas';