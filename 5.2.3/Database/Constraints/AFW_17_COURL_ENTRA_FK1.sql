SET DEFINE OFF;
ALTER TABLE AFW_17_COURL_ENTRA ADD (
  CONSTRAINT AFW_17_COURL_ENTRA_FK1 
  FOREIGN KEY (REF_PROFL_COURL) 
  REFERENCES AFW_17_PROFL_COURL (SEQNC)
  ENABLE VALIDATE)
/