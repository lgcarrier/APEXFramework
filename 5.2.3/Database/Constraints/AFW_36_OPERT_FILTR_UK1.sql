SET DEFINE OFF;
ALTER TABLE AFW_36_OPERT_FILTR ADD (
  CONSTRAINT AFW_36_OPERT_FILTR_UK1
  UNIQUE (CODE)
  ENABLE VALIDATE)
/
