SET DEFINE OFF;
ALTER TABLE AFW_23_PATRN_RECHR ADD (
  CONSTRAINT AFW_23_PATRN_RECHR_FK50 
  FOREIGN KEY (REF_PRODT) 
  REFERENCES AFW_11_PRODT (SEQNC)
  ENABLE VALIDATE)
/