SET DEFINE OFF;
ALTER TABLE AFW_01_RESLT_DESTN ADD (
  CONSTRAINT AFW_01_RESLT_DESTN_FK3 
  FOREIGN KEY (DNR_REF_PRODT) 
  REFERENCES AFW_11_PRODT (SEQNC)
  ENABLE VALIDATE)
/