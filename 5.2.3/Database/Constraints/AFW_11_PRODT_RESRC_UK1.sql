SET DEFINE OFF;
ALTER TABLE AFW_11_PRODT_RESRC ADD (
  CONSTRAINT AFW_11_PRODT_RESRC_UK1
  UNIQUE (REF_PRODT, REF_FORMT, REF_CONDT_EXECT, REF_RESRC)
  ENABLE VALIDATE)
/
