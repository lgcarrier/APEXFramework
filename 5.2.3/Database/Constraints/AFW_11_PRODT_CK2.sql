SET DEFINE OFF;
ALTER TABLE AFW_11_PRODT ADD (
  CONSTRAINT AFW_11_PRODT_CK2
  CHECK (tail_tabl_extra > 0)
  ENABLE VALIDATE)
/
