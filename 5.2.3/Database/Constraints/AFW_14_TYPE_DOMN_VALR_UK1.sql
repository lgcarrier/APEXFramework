SET DEFINE OFF;
ALTER TABLE AFW_14_TYPE_DOMN_VALR ADD (
  CONSTRAINT AFW_14_TYPE_DOMN_VALR_UK1
  UNIQUE (CODE, REF_PRODT)
  ENABLE VALIDATE)
/
