SET DEFINE OFF;
ALTER TABLE AFW_01_CONFG_EVENM_NOTFB ADD (
  CONSTRAINT AFW_01_CONFG_EVENM_NOTFB_FK1 
  FOREIGN KEY (REF_EVENM_NOTFB) 
  REFERENCES AFW_01_EVENM_NOTFB (SEQNC)
  ENABLE VALIDATE)
/
