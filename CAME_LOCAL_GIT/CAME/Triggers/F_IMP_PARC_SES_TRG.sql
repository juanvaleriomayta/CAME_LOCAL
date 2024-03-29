CREATE OR REPLACE TRIGGER came."F_IMP_PARC_SES_TRG" 
BEFORE INSERT ON came.F_IMP_PARC_SES 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.CODIMPPARSES IS NULL THEN
      SELECT F_IMP_PARC_SES_SEQ.NEXTVAL INTO :NEW.CODIMPPARSES FROM SYS.DUAL;
    END IF;
    IF INSERTING AND :NEW.DNIPER IS NULL THEN
      SELECT F_IMP_PARC_SES_SEQ.NEXTVAL INTO :NEW.DNIPER FROM SYS.DUAL;
    END IF;
    IF INSERTING AND :NEW.CODFASE IS NULL THEN
      SELECT F_IMP_PARC_SES_SEQ.NEXTVAL INTO :NEW.CODFASE FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/