SET DEFINE OFF;
ALTER TABLE AFW_12_INSTA_PROCS_APROB ADD (
  CONSTRAINT AFW_12_INSTA_PROCS_APROB_FK3 
  FOREIGN KEY (REF_INSTA_PROCS_APROB_SUIVN) 
  REFERENCES AFW_12_INSTA_PROCS_APROB (SEQNC)
  ENABLE VALIDATE)
/