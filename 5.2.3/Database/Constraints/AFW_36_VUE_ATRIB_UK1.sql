SET DEFINE OFF;
ALTER TABLE AFW_36_VUE_ATRIB ADD (
  CONSTRAINT AFW_36_VUE_ATRIB_UK1
  UNIQUE (REF_VUE, REF_ATRIB_DISPN)
  ENABLE VALIDATE)
/
