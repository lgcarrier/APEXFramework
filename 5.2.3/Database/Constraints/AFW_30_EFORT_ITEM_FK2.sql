SET DEFINE OFF;
ALTER TABLE AFW_30_EFORT_ITEM ADD (
  CONSTRAINT AFW_30_EFORT_ITEM_FK2 
  FOREIGN KEY (REF_UTILS) 
  REFERENCES AFW_12_UTILS (SEQNC)
  ENABLE VALIDATE)
/
