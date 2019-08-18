CREATE OR REPLACE FORCE VIEW came.vw_doc_part (codses,nomses,decses,fecha,nomb,fecdoc,tam,tipcon,coddetprog,ubic,priv,nomfase) AS
SELECT  SESION.CODSES,
        SESION.NOMSES,
        UPPER(SESION.DECSES) AS DECSES,
        to_char(FECHASES,'DD/MM/YYYY') AS FECHA,
        BIBLIOTECA.NOMB,
        to_char(BIBLIOTECA.FECHA,'DD/MM/YYYY') as FecDoc,
        BIBLIOTECA.TAM,
        BIBLIOTECA.TIPCON,
        PROG_DET.CODDETPROG,
        BIBLIOTECA.UBIC,
        BIBLIOTECA.PRIV,
        fase.nomfase
FROM SESION
    inner join FASE on SESION.CODFASE = FASE.CODFASE
    inner join PROG_DET on PROG_DET.CODDETPROG = FASE.CODDETPROG
    left outer join SESION_ANEXO on SESION_ANEXO.CODSES = SESION.CODSES
    left outer join BIBLIOTECA on SESION_ANEXO.CODBIB = BIBLIOTECA.CODBIB
Order by SESION.NOMSES;