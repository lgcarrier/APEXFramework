SET DEFINE OFF;
ALTER TABLE AFW_12_STAT ADD (
  CONSTRAINT AFW_12_STAT_UK2
  UNIQUE (REF_STRUC_APLIC, REF_GROUP_STAT, CODE)
  ENABLE VALIDATE)
/
