SET DEFINE OFF;
ALTER TABLE AFW_01_MODL_AFICH_NOTFC ADD (
  CONSTRAINT AFW_01_MODL_AFICH_NOTFC_FK5 
  FOREIGN KEY (REF_TYPE_COMNC) 
  REFERENCES AFW_01_TYPE_COMNC (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/
