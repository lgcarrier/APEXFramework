SET DEFINE OFF;
ALTER TABLE AFW_13_PAGE_IR_COLN ADD (
  CONSTRAINT AFW_13_PAGE_IR_COLN_FK1 
  FOREIGN KEY (REF_PAGE_IR) 
  REFERENCES AFW_13_PAGE_IR (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/
