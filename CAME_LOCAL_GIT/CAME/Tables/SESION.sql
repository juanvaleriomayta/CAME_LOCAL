CREATE TABLE came.sesion (
  codses NUMBER(*,0) NOT NULL,
  nomses VARCHAR2(100 BYTE) NOT NULL,
  decses VARCHAR2(500 BYTE),
  asistencia CHAR DEFAULT 'A',
  participacion CHAR DEFAULT '0',
  caso CHAR DEFAULT '0',
  control CHAR DEFAULT '0',
  examparc CHAR DEFAULT '0',
  examfinal CHAR DEFAULT '0',
  trabajo CHAR DEFAULT '0',
  codfase NUMBER(*,0),
  tipses VARCHAR2(3 BYTE) DEFAULT 'I',
  codprof NUMBER,
  fechases DATE,
  caso2 CHAR DEFAULT '0',
  link_part VARCHAR2(250 BYTE),
  link_monitor VARCHAR2(250 BYTE),
  link_direc VARCHAR2(250 BYTE),
  link_prof VARCHAR2(250 BYTE),
  hora_ini TIMESTAMP,
  hora_fin TIMESTAMP,
  modoses VARCHAR2(2 BYTE),
  codcom VARCHAR2(250 BYTE),
  obj1ses VARCHAR2(250 BYTE),
  obj2ses VARCHAR2(250 BYTE),
  obj3ses VARCHAR2(250 BYTE),
  codare NUMBER,
  CONSTRAINT sesiones_pk PRIMARY KEY (codses),
  CONSTRAINT sesiones_fases FOREIGN KEY (codfase) REFERENCES came.fase (codfase),
  CONSTRAINT sesiones_persona FOREIGN KEY (codprof) REFERENCES came.persona (codper),
  CONSTRAINT sesion_area FOREIGN KEY (codare) REFERENCES came.area (codare)
);
COMMENT ON COLUMN came.sesion.codses IS 'CODSES es el codigo sesion de la para identificar la sesion.
';
COMMENT ON COLUMN came.sesion.nomses IS 'NOMSES de la sesion es para identificar el nombre de la sesion';
COMMENT ON COLUMN came.sesion.decses IS 'DECSES es el campo donde se pondra la descripcion de la sesion.';
COMMENT ON COLUMN came.sesion.asistencia IS 'ASISTENCIA es el campo el cual ira A o I si es quieres habilitarse para que no sume los criterios';
COMMENT ON COLUMN came.sesion.participacion IS 'Participacion es el campo el cual ira 0 o 1 si es quieres habilitarse';
COMMENT ON COLUMN came.sesion.caso IS 'CASO es el campo el cual ira 0 o 1 si es quieres habilitarse';
COMMENT ON COLUMN came.sesion.control IS 'CONTROL es el campo el cual ira 0 o 1 si es quieres habilitarse';
COMMENT ON COLUMN came.sesion.examparc IS 'EXAMPARC es el campo el cual ira 0 o 1 si es quieres habilitarse';
COMMENT ON COLUMN came.sesion.examfinal IS 'EXAMFINAL es el campo el cual ira 0 o 1 si es quieres habilitarse';
COMMENT ON COLUMN came.sesion.trabajo IS 'TRABAJO es el campo el cual ira 0 o 1 si es quieres habilitarse';
COMMENT ON COLUMN came.sesion.codfase IS 'ASISTENCIA es el campo el cual ira 0 o 1 si es quieres habilitarse';
COMMENT ON COLUMN came.sesion.tipses IS 'TIPSES es el campo en el cual ira si es normal final o trabajo';
COMMENT ON COLUMN came.sesion.codprof IS 'CODPROF es el campo en el cual ira el ID del profesor por el cual se identificara que profesor dicto la sesion';
COMMENT ON COLUMN came.sesion.fechases IS 'FECHASES  es el campo en el cual la fecha en que se dio la sesion';
COMMENT ON COLUMN came.sesion.link_part IS 'Link del formulario del participante.';
COMMENT ON COLUMN came.sesion.link_monitor IS 'Link del formulario del monitor';
COMMENT ON COLUMN came.sesion.link_direc IS 'Link del formulario del director de programa.';
COMMENT ON COLUMN came.sesion.link_prof IS 'Link del formulario del profesor.';
COMMENT ON COLUMN came.sesion.hora_ini IS 'Hora de inicio de la sesión';
COMMENT ON COLUMN came.sesion.hora_fin IS 'Hora de finalización de la sesión';
COMMENT ON COLUMN came.sesion.modoses IS 'Modo de la sesión(Presencial o semi-presencial)';
COMMENT ON COLUMN came.sesion.codcom IS 'Código de la competencia de la sesión';
COMMENT ON COLUMN came.sesion.obj1ses IS 'Objetivo 1 de la sesión.';
COMMENT ON COLUMN came.sesion.obj2ses IS 'Objetivo 2 de la sesión.';
COMMENT ON COLUMN came.sesion.obj3ses IS 'Objetivo 3 de la sesión.';