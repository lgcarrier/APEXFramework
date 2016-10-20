SET DEFINE OFF;
ALTER TABLE AFW_13_INSTA_PREFR ADD (
  CONSTRAINT AFW_13_INSTA_PREFR_FK4 
  FOREIGN KEY (REF_STRUC_APLIC) 
  REFERENCES AFW_12_STRUC_APLIC (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/