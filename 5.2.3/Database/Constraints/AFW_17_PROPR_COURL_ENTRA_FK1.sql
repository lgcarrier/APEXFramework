SET DEFINE OFF;
ALTER TABLE AFW_17_PROPR_COURL_ENTRA ADD (
  CONSTRAINT AFW_17_PROPR_COURL_ENTRA_FK1 
  FOREIGN KEY (REF_COURL_ENTRA) 
  REFERENCES AFW_17_COURL_ENTRA (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/
