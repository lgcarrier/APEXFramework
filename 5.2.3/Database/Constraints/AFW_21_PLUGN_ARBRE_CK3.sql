SET DEFINE OFF;
ALTER TABLE AFW_21_PLUGN_ARBRE ADD (
  CONSTRAINT AFW_21_PLUGN_ARBRE_CK3
  CHECK (mode_cache in ('SESN','UTILS','AUCUN'))
  ENABLE VALIDATE)
/