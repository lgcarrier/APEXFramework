SET DEFINE OFF;
ALTER TABLE AFW_30_CARNT_APLIC ADD (
  CONSTRAINT AFW_30_CARNT_PRODT_UK1
  UNIQUE (REF_APLIC)
  ENABLE VALIDATE)
/