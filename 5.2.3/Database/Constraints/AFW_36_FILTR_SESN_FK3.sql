SET DEFINE OFF;
ALTER TABLE AFW_36_FILTR_SESN ADD (
  CONSTRAINT AFW_36_FILTR_SESN_FK3 
  FOREIGN KEY (REF_ATRIB_DISPN) 
  REFERENCES AFW_36_ATRIB_DISPN (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/
