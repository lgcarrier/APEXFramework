SET DEFINE OFF;
ALTER TABLE AFW_13_NAVGT_ELEMN ADD (
  CONSTRAINT AFW_13_NAVGT_ELEMN_FK1 
  FOREIGN KEY (REF_NAVGT) 
  REFERENCES AFW_13_NAVGT (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/
