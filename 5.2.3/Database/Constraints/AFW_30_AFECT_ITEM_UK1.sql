SET DEFINE OFF;
ALTER TABLE AFW_30_AFECT_ITEM ADD (
  CONSTRAINT AFW_30_AFECT_ITEM_UK1
  UNIQUE (REF_ITEM_CARNT_PRODT, REF_UTILS)
  ENABLE VALIDATE)
/
