SET DEFINE OFF;
ALTER TABLE AFW_11_ATRIB_ENTIT ADD (
  CONSTRAINT AFW_11_ATRIB_ENTIT_UK1
  UNIQUE (REF_ENTIT, CODE)
  ENABLE VALIDATE)
/
