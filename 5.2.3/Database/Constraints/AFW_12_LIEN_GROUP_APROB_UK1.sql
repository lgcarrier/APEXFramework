SET DEFINE OFF;
ALTER TABLE AFW_12_LIEN_GROUP_APROB ADD (
  CONSTRAINT AFW_12_LIEN_GROUP_APROB_UK1
  UNIQUE (REF_GROUP_APROB, REF_APROB)
  ENABLE VALIDATE)
/