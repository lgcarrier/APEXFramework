SET DEFINE OFF;
ALTER TABLE AFW_12_STRUC_APLIC ADD (
  CONSTRAINT AFW_12_STRUC_APLIC_FK4 
  FOREIGN KEY (REF_PAGE_FORML) 
  REFERENCES AFW_13_PAGE (SEQNC)
  ON DELETE SET NULL
  ENABLE VALIDATE)
/