SET DEFINE OFF;
ALTER TABLE AFW_01_RESLT_DESTN ADD (
  CONSTRAINT AFW_01_RESLT_DESTN_FK4 
  FOREIGN KEY (REF_STRUC_APLIC_ACCES) 
  REFERENCES AFW_12_STRUC_APLIC (SEQNC)
  ENABLE VALIDATE)
/
