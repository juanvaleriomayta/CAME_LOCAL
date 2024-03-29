CREATE OR REPLACE TRIGGER came."FDPROGRAMA_TRG" 
BEFORE INSERT ON came.FDPROGRAMA 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.COD_FDPROG IS NULL THEN
      SELECT FDPROGRAMA_SEQ.NEXTVAL INTO :NEW.COD_FDPROG FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/