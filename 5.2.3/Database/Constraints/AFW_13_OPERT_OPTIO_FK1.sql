SET DEFINE OFF;
ALTER TABLE AFW_13_OPERT_OPTIO ADD (
  CONSTRAINT AFW_13_OPERT_OPTIO_FK1 
  FOREIGN KEY (REF_OPERT) 
  REFERENCES AFW_13_OPERT (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/
