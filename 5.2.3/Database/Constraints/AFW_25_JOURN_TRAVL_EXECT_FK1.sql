SET DEFINE OFF;
ALTER TABLE AFW_25_JOURN_TRAVL_EXECT ADD (
  CONSTRAINT AFW_25_JOURN_TRAVL_EXECT_FK1 
  FOREIGN KEY (REF_TRAVL) 
  REFERENCES AFW_25_TRAVL (SEQNC)
  ENABLE VALIDATE)
/
