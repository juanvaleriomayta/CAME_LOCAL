CREATE OR REPLACE TRIGGER came."AREA_TRG" 
BEFORE INSERT ON came.AREA 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.CODARE IS NULL THEN
      SELECT AREA_SEQ.NEXTVAL INTO :NEW.CODARE FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/