SET DEFINE OFF;
ALTER TABLE AFW_25_JOURN_TRAVL_EXECT ADD (
  CONSTRAINT AFW_25_JOURN_TRAVL_EXECT_FK2 
  FOREIGN KEY (REF_PUBLC_TRAVL) 
  REFERENCES AFW_25_PUBLC_TRAVL (SEQNC)
  ENABLE VALIDATE)
/
