SET DEFINE OFF;
ALTER TABLE AFW_12_UTILS ADD (
  CONSTRAINT AFW_12_UTILS_UK2
  UNIQUE (COURL)
  ENABLE VALIDATE)
/