SET DEFINE OFF;
ALTER TABLE AFW_17_PROFL_COURL ADD (
  CONSTRAINT AFW_17_PROFL_COURL_UK2
  UNIQUE (REF_DOMN, CODE)
  ENABLE VALIDATE)
/
