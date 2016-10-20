SET DEFINE OFF;
ALTER TABLE AFW_12_DEFNT_ACCES ADD (
  CONSTRAINT AFW_12_DEFNT_ACCES_FK7 
  FOREIGN KEY (REF_STRUC_APLIC) 
  REFERENCES AFW_12_STRUC_APLIC (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/
