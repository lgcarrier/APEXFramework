SET DEFINE OFF;
ALTER TABLE AFW_04_FIL_ARIAN ADD (
  CONSTRAINT AFW_04_FIL_ARIAN_FK2 
  FOREIGN KEY (REF_ELEMN_SUP) 
  REFERENCES AFW_04_FIL_ARIAN (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/
