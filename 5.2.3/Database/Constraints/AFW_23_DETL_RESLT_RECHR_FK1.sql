SET DEFINE OFF;
ALTER TABLE AFW_23_DETL_RESLT_RECHR ADD (
  CONSTRAINT AFW_23_DETL_RESLT_RECHR_FK1 
  FOREIGN KEY (REF_RECHR) 
  REFERENCES AFW_23_RECHR (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/
