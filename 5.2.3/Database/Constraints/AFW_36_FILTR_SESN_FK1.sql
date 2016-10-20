SET DEFINE OFF;
ALTER TABLE AFW_36_FILTR_SESN ADD (
  CONSTRAINT AFW_36_FILTR_SESN_FK1 
  FOREIGN KEY (REF_SESN) 
  REFERENCES AFW_12_SESN (ID_SESN)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/