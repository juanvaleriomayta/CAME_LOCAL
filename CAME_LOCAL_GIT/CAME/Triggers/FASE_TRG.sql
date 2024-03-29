CREATE OR REPLACE TRIGGER came."FASE_TRG" 
BEFORE INSERT ON came.FASE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.CODFASE IS NULL THEN
      SELECT FASE_SEQ.NEXTVAL INTO :NEW.CODFASE FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/