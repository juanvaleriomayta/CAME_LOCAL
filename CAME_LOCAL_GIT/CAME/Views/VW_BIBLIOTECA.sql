CREATE OR REPLACE FORCE VIEW came.vw_biblioteca (codigo,nombre,"TAMAÑO",fecha,tipo,ubicacion,privilegio,programa) AS
SELECT CODBIB AS "CODIGO",
NOMB AS "NOMBRE",
TAM AS "TAMAÑO",
TO_CHAR(FECHA,'DD/MM/YYYY') AS "FECHA",
TIPCON AS "TIPO",
UBIC AS UBICACION,
PRIV AS PRIVILEGIO,
tipoprog.codtippg as "PROGRAMA"
FROM BIBLIOTECA inner join tipoprog on biblioteca.codtippg = tipoprog.codtippg;