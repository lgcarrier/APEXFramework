SET DEFINE OFF;
ALTER TABLE AFW_13_REGN_PILTB_LANG ADD (
  CONSTRAINT AFW_13_REGN_PILTB_LANG_FK2 
  FOREIGN KEY (REF_LANG) 
  REFERENCES AFW_01_LANG (SEQNC)
  ENABLE VALIDATE)
/
