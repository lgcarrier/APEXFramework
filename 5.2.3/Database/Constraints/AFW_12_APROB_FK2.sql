SET DEFINE OFF;
ALTER TABLE AFW_12_APROB ADD (
  CONSTRAINT AFW_12_APROB_FK2 
  FOREIGN KEY (REF_UTILS) 
  REFERENCES AFW_12_UTILS (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/