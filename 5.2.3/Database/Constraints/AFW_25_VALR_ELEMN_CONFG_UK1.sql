SET DEFINE OFF;
ALTER TABLE AFW_25_VALR_ELEMN_CONFG ADD (
  CONSTRAINT AFW_25_VALR_ELEMN_CONFG_UK1
  UNIQUE (REF_ELEMN_CONFG_PUBLC, REF_DOMN)
  ENABLE VALIDATE)
/
