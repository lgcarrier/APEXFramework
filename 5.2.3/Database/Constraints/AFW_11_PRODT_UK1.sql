SET DEFINE OFF;
ALTER TABLE AFW_11_PRODT ADD (
  CONSTRAINT AFW_11_PRODT_UK1
  UNIQUE (CODE)
  ENABLE VALIDATE)
/