SET DEFINE OFF;
ALTER TABLE AFW_25_GROUP_PUBLC ADD (
  CONSTRAINT AFW_25_GROUP_PUBLC_FK1 
  FOREIGN KEY (REF_PRODT) 
  REFERENCES AFW_11_PRODT (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/
