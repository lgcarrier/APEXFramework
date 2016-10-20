SET DEFINE OFF;
ALTER TABLE AFW_13_REGN_PILTB ADD (
  CONSTRAINT AFW_13_REGN_PILTB_FK1 
  FOREIGN KEY (REF_PAGE) 
  REFERENCES AFW_13_PAGE (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/
