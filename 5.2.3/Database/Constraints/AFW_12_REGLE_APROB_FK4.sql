SET DEFINE OFF;
ALTER TABLE AFW_12_REGLE_APROB ADD (
  CONSTRAINT AFW_12_REGLE_APROB_FK4 
  FOREIGN KEY (REF_ROLE_APROB) 
  REFERENCES AFW_12_ROLE_APROB (SEQNC)
  ENABLE VALIDATE)
/