SET DEFINE OFF;
ALTER TABLE AFW_13_TUTRL ADD (
  CONSTRAINT AFW_13_TUTRL_UK1
  UNIQUE (CODE, DNR_REF_PRODT)
  ENABLE VALIDATE)
/