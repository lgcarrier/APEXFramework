SET DEFINE OFF;
ALTER TABLE AFW_01_MESG ADD (
  CONSTRAINT AFW_01_MESG_FK1 
  FOREIGN KEY (REF_PRODT) 
  REFERENCES AFW_11_PRODT (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/
