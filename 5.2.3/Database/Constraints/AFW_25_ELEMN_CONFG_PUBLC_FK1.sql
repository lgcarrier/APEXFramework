SET DEFINE OFF;
ALTER TABLE AFW_25_ELEMN_CONFG_PUBLC ADD (
  CONSTRAINT AFW_25_ELEMN_CONFG_PUBLC_FK1 
  FOREIGN KEY (REF_TYPE_PUBLC) 
  REFERENCES AFW_25_TYPE_PUBLC (SEQNC)
  ENABLE VALIDATE)
/
