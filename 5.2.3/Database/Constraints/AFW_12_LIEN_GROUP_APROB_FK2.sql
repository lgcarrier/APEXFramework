SET DEFINE OFF;
ALTER TABLE AFW_12_LIEN_GROUP_APROB ADD (
  CONSTRAINT AFW_12_LIEN_GROUP_APROB_FK2 
  FOREIGN KEY (REF_APROB) 
  REFERENCES AFW_12_APROB (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/
