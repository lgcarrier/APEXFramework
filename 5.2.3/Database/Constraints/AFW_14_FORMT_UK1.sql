SET DEFINE OFF;
ALTER TABLE AFW_14_FORMT ADD (
  CONSTRAINT AFW_14_FORMT_UK1
  UNIQUE (REF_PRODT, DEFNT)
  ENABLE VALIDATE)
/
