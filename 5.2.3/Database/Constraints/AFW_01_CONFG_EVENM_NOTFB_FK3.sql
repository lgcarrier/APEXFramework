SET DEFINE OFF;
ALTER TABLE AFW_01_CONFG_EVENM_NOTFB ADD (
  CONSTRAINT AFW_01_CONFG_EVENM_NOTFB_FK3 
  FOREIGN KEY (REF_PROFL_COURL) 
  REFERENCES AFW_17_PROFL_COURL (SEQNC)
  ENABLE VALIDATE)
/