SET DEFINE OFF;
ALTER TABLE AFW_25_GROUP_PUBLC ADD (
  CONSTRAINT AFW_25_GROUP_PUBLC_UK1
  UNIQUE (CODE)
  ENABLE VALIDATE)
/
