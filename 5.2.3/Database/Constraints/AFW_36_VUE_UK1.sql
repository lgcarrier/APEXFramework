SET DEFINE OFF;
ALTER TABLE AFW_36_VUE ADD (
  CONSTRAINT AFW_36_VUE_UK1
  UNIQUE (REF_PAGE, CODE)
  ENABLE VALIDATE)
/
