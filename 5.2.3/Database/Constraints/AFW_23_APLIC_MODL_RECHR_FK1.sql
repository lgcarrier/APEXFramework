SET DEFINE OFF;
ALTER TABLE AFW_23_APLIC_MODL_RECHR ADD (
  CONSTRAINT AFW_23_APLIC_MODL_RECHR_FK1 
  FOREIGN KEY (REF_MODL_RECHR) 
  REFERENCES AFW_23_MODL_RECHR (SEQNC)
  ENABLE VALIDATE)
/
