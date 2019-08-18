CREATE TABLE came.config_pesos (
  codconfpes NVARCHAR2(20) NOT NULL,
  codfase NUMBER NOT NULL,
  pesocaso NVARCHAR2(20) DEFAULT '0',
  pesotra NVARCHAR2(20) DEFAULT '0',
  pesoparc NVARCHAR2(20) DEFAULT '0',
  pesofinal NVARCHAR2(20) DEFAULT '0',
  pesopart VARCHAR2(20 BYTE) DEFAULT '0'
);
COMMENT ON COLUMN came.config_pesos.codconfpes IS 'CÒDIGO PRIMARIO DE LA CONFIGURACIÒN DE PESOS';
COMMENT ON COLUMN came.config_pesos.codfase IS 'CÒDIGO DE LA FASE A LA QUE SE LE ASIGNARÀN LOS PESOS';
COMMENT ON COLUMN came.config_pesos.pesocaso IS 'PESO DEL CASO';
COMMENT ON COLUMN came.config_pesos.pesotra IS 'PESO DEL TRABAJO';
COMMENT ON COLUMN came.config_pesos.pesoparc IS 'PESO DEL EXAMEN PARCIAL';
COMMENT ON COLUMN came.config_pesos.pesofinal IS 'PESO DEL EXAMEN FINAL';
COMMENT ON COLUMN came.config_pesos.pesopart IS 'PESO DE LA PARTICIPACION';