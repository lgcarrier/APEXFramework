SET DEFINE OFF;
ALTER TABLE AFW_11_PRODT ADD (
  CONSTRAINT AFW_11_PRODT_FK8 
  FOREIGN KEY (REF_MESG_FETCH) 
  REFERENCES AFW_01_MESG (SEQNC)
  ON DELETE SET NULL
  ENABLE VALIDATE)
/
