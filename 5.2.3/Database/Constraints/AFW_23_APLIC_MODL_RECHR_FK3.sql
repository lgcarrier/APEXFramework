SET DEFINE OFF;
ALTER TABLE AFW_23_APLIC_MODL_RECHR ADD (
  CONSTRAINT AFW_23_APLIC_MODL_RECHR_FK3 
  FOREIGN KEY (REF_ATRIB_STRUC_APLIC_AFICH) 
  REFERENCES AFW_12_ATRIB_STRUC_APLIC (SEQNC)
  ENABLE VALIDATE)
/
