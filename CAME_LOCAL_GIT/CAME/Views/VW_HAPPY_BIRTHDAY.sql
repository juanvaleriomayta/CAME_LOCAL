CREATE OR REPLACE FORCE VIEW came.vw_happy_birthday (nombre,imagen,fechper,edad,estado) AS
SELECT
(UPPER(APEPER) ||', ' || INITCAP(NOMPER) ) AS NOMBRE,
IMGPER AS IMAGEN,
TO_CHAR(PERSONA.FECHPER,'DD/MM/YYYY') AS FECHPER,
trunc((to_date((to_char(sysdate,'yyyy')||'-'||to_char(sysdate,'mm')||'-'||to_char(sysdate,'dd')),'yyyy-mm-dd')- FECHPER )/365) as edad,
'0' AS ESTADO
FROM PERSONA where  TO_CHAR(sysdate , 'dd/MM') = TO_CHAR(FECHPER,'dd/MM') AND TIPOPER='ES' UNION 
SELECT
(UPPER(APEPER) ||', ' || INITCAP(NOMPER) ) AS NOMBRE,
IMGPER AS IMAGEN,
TO_CHAR(PERSONA.FECHPER,'DD/MM/YYYY') AS FECHPER,
trunc((to_date((to_char(sysdate,'yyyy')||'-'||to_char(sysdate,'mm')||'-'||to_char(sysdate,'dd')),'yyyy-mm-dd')- FECHPER )/365) as edad,
'1' AS ESTADO
FROM PERSONA where  TO_CHAR(sysdate + 1, 'dd/MM') = TO_CHAR(FECHPER,'dd/MM') AND TIPOPER='ES' UNION
SELECT
(UPPER(APEPER) ||', ' || INITCAP(NOMPER) ) AS NOMBRE,
IMGPER AS IMAGEN,
TO_CHAR(PERSONA.FECHPER,'DD/MM/YYYY') AS FECHPER,
trunc((to_date((to_char(sysdate,'yyyy')||'-'||to_char(sysdate,'mm')||'-'||to_char(sysdate,'dd')),'yyyy-mm-dd')- FECHPER )/365) as edad,
'2' AS ESTADO
FROM PERSONA where  TO_CHAR(sysdate + 2, 'dd/MM') = TO_CHAR(FECHPER,'dd/MM') AND TIPOPER='ES' UNION
SELECT
(UPPER(APEPER) ||', ' || INITCAP(NOMPER) ) AS NOMBRE,
IMGPER AS IMAGEN,
TO_CHAR(PERSONA.FECHPER,'DD/MM/YYYY') AS FECHPER,
trunc((to_date((to_char(sysdate,'yyyy')||'-'||to_char(sysdate,'mm')||'-'||to_char(sysdate,'dd')),'yyyy-mm-dd')- FECHPER )/365) as edad,
'3' AS ESTADO
FROM PERSONA where  TO_CHAR(sysdate + 3, 'dd/MM') = TO_CHAR(FECHPER,'dd/MM') AND TIPOPER='ES' UNION
SELECT
(UPPER(APEPER) ||', ' || INITCAP(NOMPER) ) AS NOMBRE,
IMGPER AS IMAGEN,
TO_CHAR(PERSONA.FECHPER,'DD/MM/YYYY') AS FECHPER,
trunc((to_date((to_char(sysdate,'yyyy')||'-'||to_char(sysdate,'mm')||'-'||to_char(sysdate,'dd')),'yyyy-mm-dd')- FECHPER )/365) as edad,
'4' AS ESTADO
FROM PERSONA where  TO_CHAR(sysdate + 4, 'dd/MM') = TO_CHAR(FECHPER,'dd/MM') AND TIPOPER='ES' UNION
SELECT
(UPPER(APEPER) ||', ' || INITCAP(NOMPER) ) AS NOMBRE,
IMGPER AS IMAGEN,
TO_CHAR(PERSONA.FECHPER,'DD/MM/YYYY') AS FECHPER,
trunc((to_date((to_char(sysdate,'yyyy')||'-'||to_char(sysdate,'mm')||'-'||to_char(sysdate,'dd')),'yyyy-mm-dd')- FECHPER )/365) as edad,
'5' AS ESTADO
FROM PERSONA where  TO_CHAR(sysdate + 5, 'dd/MM') = TO_CHAR(FECHPER,'dd/MM') AND TIPOPER='ES' UNION
SELECT
(UPPER(APEPER) ||', ' || INITCAP(NOMPER) ) AS NOMBRE,
IMGPER AS IMAGEN,
TO_CHAR(PERSONA.FECHPER,'DD/MM/YYYY') AS FECHPER,
trunc((to_date((to_char(sysdate,'yyyy')||'-'||to_char(sysdate,'mm')||'-'||to_char(sysdate,'dd')),'yyyy-mm-dd')- FECHPER )/365) as edad,
'6' AS ESTADO
FROM PERSONA where  TO_CHAR(sysdate + 6, 'dd/MM') = TO_CHAR(FECHPER,'dd/MM') AND TIPOPER='ES' ORDER BY ESTADO,NOMBRE;