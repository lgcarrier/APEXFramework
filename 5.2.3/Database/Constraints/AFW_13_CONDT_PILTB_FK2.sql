SET DEFINE OFF;
ALTER TABLE AFW_13_CONDT_PILTB ADD (
  CONSTRAINT AFW_13_CONDT_PILTB_FK2 
  FOREIGN KEY (REF_PAGE_ITEM_FOCUS) 
  REFERENCES AFW_13_PAGE_ITEM (SEQNC)
  ENABLE VALIDATE)
/
