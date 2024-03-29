CREATE OR REPLACE TRIGGER came."F_IMP_FINAL_SES_TRG" 
BEFORE INSERT ON came.F_IMP_FINAL_SES 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.CODIMPFINALSES IS NULL THEN
      SELECT F_IMP_FINAL_SES_SEQ.NEXTVAL INTO :NEW.CODIMPFINALSES FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/