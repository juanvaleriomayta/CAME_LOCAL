CREATE OR REPLACE TRIGGER came."ASIGMONITOR_TRG" 
BEFORE INSERT ON came.ASIGMONITOR 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.CODASIMON IS NULL THEN
      SELECT ASIGMONITOR_SEQ.NEXTVAL INTO :NEW.CODASIMON FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/