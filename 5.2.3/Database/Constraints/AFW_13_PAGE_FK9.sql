SET DEFINE OFF;
ALTER TABLE AFW_13_PAGE ADD (
  CONSTRAINT AFW_13_PAGE_FK9 
  FOREIGN KEY (REF_MESG_RANGE_SUPRM_SPECF) 
  REFERENCES AFW_01_MESG (SEQNC)
  ENABLE VALIDATE)
/
