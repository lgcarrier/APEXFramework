SET DEFINE OFF;
ALTER TABLE AFW_12_GROUP_STAT ADD (
  CONSTRAINT AFW_12_GROUP_STAT_FK3 
  FOREIGN KEY (REF_STRUC_APLIC) 
  REFERENCES AFW_12_STRUC_APLIC (SEQNC)
  ON DELETE SET NULL
  ENABLE VALIDATE)
/
