CREATE OR REPLACE TRIGGER came."SESION_DET_TRG" 
BEFORE INSERT ON came.SESION_DET 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.CODDETSES IS NULL THEN
      SELECT SESION_DET_SEQ.NEXTVAL INTO :NEW.CODDETSES FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/