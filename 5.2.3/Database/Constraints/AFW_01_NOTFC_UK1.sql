SET DEFINE OFF;
ALTER TABLE AFW_01_NOTFC ADD (
  CONSTRAINT AFW_01_NOTFC_UK1
  UNIQUE (REF_DOMN, CODE)
  ENABLE VALIDATE)
/