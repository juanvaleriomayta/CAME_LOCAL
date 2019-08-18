CREATE OR REPLACE FUNCTION came."F_SYSDATE" RETURN DATE IS
    v_sysdate  DATE;
BEGIN
    SELECT TO_DATE(TO_CHAR(current_timestamp,'DD/MM/YYYY'),'DD/MM/YYYY') INTO v_sysdate FROM dual;
    RETURN v_sysdate;
END f_sysdate;
/