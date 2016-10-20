SET DEFINE OFF;
ALTER TABLE AFW_12_GROUP_STAT ADD (
  CONSTRAINT AFW_12_GROUP_STAT_FK2 
  FOREIGN KEY (REF_DOMN) 
  REFERENCES AFW_12_DOMN (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/