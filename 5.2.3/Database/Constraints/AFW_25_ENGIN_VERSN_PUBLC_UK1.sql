SET DEFINE OFF;
ALTER TABLE AFW_25_ENGIN_VERSN_PUBLC ADD (
  CONSTRAINT AFW_25_ENGIN_VERSN_PUBLC_UK1
  UNIQUE (REF_VERSN_PUBLC, REF_ENGIN, DNR_REF_PRODT)
  ENABLE VALIDATE)
/