SET DEFINE OFF;
ALTER TABLE AFW_25_VERSN_PUBLC ADD (
  CONSTRAINT AFW_25_VERSN_PUBLC_UK1
  UNIQUE (CODE, DNR_REF_PRODT)
  ENABLE VALIDATE)
/
