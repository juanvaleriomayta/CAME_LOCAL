CREATE OR REPLACE FUNCTION came."F_EDADHIJOS" ( codhijos NUMBER ) RETURN VARCHAR2 IS
    edad   NVARCHAR2(10);
BEGIN
    Select CASE WHEN TO_CHAR(F_SYSDATE,'DD') >= TO_CHAR(fecnachi,'DD') 
            AND TO_CHAR(F_SYSDATE,'MM') >= TO_CHAR(fecnachi,'MM') 
            THEN (TO_CHAR(F_SYSDATE,'YYYY') - TO_CHAR(fecnachi,'YYYY')) 
            ELSE (TO_CHAR(F_SYSDATE,'YYYY') - TO_CHAR(fecnachi,'YYYY')) - 1 
            END INTO edad
    from persona_hijos
    where codhij = codhijos;
    RETURN edad;
END f_edadhijos;
/