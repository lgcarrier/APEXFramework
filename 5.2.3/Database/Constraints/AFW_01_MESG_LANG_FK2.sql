SET DEFINE OFF;
ALTER TABLE AFW_01_MESG_LANG ADD (
  CONSTRAINT AFW_01_MESG_LANG_FK2 
  FOREIGN KEY (REF_LANG) 
  REFERENCES AFW_01_LANG (SEQNC)
  ENABLE VALIDATE)
/
