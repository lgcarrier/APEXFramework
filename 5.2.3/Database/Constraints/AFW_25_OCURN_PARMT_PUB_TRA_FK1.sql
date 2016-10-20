SET DEFINE OFF;
ALTER TABLE AFW_25_OCURN_PARMT_PUBLC_TRAVL ADD (
  CONSTRAINT AFW_25_OCURN_PARMT_PUB_TRA_FK1 
  FOREIGN KEY (REF_PARMT_PUBLC_TRAVL) 
  REFERENCES AFW_25_PARMT_PUBLC_TRAVL (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/
