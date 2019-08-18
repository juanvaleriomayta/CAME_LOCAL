CREATE OR REPLACE TRIGGER came."FMONITOR_TRG" 
BEFORE INSERT ON came.FMONITOR 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.CODFMON IS NULL THEN
      SELECT FMONITOR_SEQ.NEXTVAL INTO :NEW.CODFMON FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/