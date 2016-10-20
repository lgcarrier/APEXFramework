SET DEFINE OFF;
ALTER TABLE AFW_12_HISTR_ACCES ADD (
  CONSTRAINT AFW_12_HISTR_ACCES_FK1 
  FOREIGN KEY (REF_UTILS) 
  REFERENCES AFW_12_UTILS (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/