SET DEFINE OFF;
ALTER TABLE AFW_37_GADGT_PARMT_RACRC ADD (
  CONSTRAINT AFW_37_GADGT_PARMT_RACRC_CK1
  CHECK (indic_genrq in ('N','O'))
  ENABLE VALIDATE)
/
