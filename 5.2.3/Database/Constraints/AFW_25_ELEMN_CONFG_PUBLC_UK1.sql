SET DEFINE OFF;
ALTER TABLE AFW_25_ELEMN_CONFG_PUBLC ADD (
  CONSTRAINT AFW_25_ELEMN_CONFG_PUBLC_UK1
  UNIQUE (REF_TYPE_PUBLC, CODE, DNR_REF_PRODT)
  ENABLE VALIDATE)
/