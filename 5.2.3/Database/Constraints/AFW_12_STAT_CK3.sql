SET DEFINE OFF;
ALTER TABLE AFW_12_STAT ADD (
  CONSTRAINT AFW_12_STAT_CK3
  CHECK (
  catgr_stat in ('ACTIO','ATENT')
)
  ENABLE VALIDATE)
/