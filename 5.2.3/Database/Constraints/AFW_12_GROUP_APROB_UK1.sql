SET DEFINE OFF;
ALTER TABLE AFW_12_GROUP_APROB ADD (
  CONSTRAINT AFW_12_GROUP_APROB_UK1
  UNIQUE (CODE, REF_GROUP_STAT)
  ENABLE VALIDATE)
/
