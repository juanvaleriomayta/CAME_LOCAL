CREATE OR REPLACE TRIGGER came."F_IMP_FINAL_PROF_TRG" 
BEFORE INSERT ON came.F_IMP_FINAL_PROF 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.CODIMPFINALPROF IS NULL THEN
      SELECT F_IMP_FINAL_PROF_SEQ.NEXTVAL INTO :NEW.CODIMPFINALPROF FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/