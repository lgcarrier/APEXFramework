SET DEFINE OFF;
ALTER TABLE AFW_21_PLUGN_ARBRE_NOEUD ADD (
  CONSTRAINT AFW_21_PLUGN_ARBRE_NOEUD_CK2
  CHECK (INDIC_CREER_NOEUD in ('O','N'))
  ENABLE VALIDATE)
/