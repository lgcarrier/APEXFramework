SET DEFINE OFF;
ALTER TABLE AFW_19_SPECF_FONCT ADD (
  CONSTRAINT AFW_19_SPECF_FONCT_FK2 
  FOREIGN KEY (REF_ITEM) 
  REFERENCES AFW_13_PAGE_ITEM (SEQNC)
  ENABLE VALIDATE)
/
