SET DEFINE OFF;
ALTER TABLE AFW_37_GADGT ADD (
  CONSTRAINT AFW_37_GADGT_UK1
  UNIQUE (CODE, REF_PRODT)
  ENABLE VALIDATE)
/
