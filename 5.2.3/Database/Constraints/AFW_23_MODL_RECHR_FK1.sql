SET DEFINE OFF;
ALTER TABLE AFW_23_MODL_RECHR ADD (
  CONSTRAINT AFW_23_MODL_RECHR_FK1 
  FOREIGN KEY (REF_DOMN) 
  REFERENCES AFW_12_DOMN (SEQNC)
  ENABLE VALIDATE)
/
