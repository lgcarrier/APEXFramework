SET DEFINE OFF;
ALTER TABLE AFW_12_INSTA_PROCS_APROB ADD (
  CONSTRAINT AFW_12_INSTA_PROCS_APROB_FK1 
  FOREIGN KEY (REF_GROUP_STAT) 
  REFERENCES AFW_12_GROUP_STAT (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/
