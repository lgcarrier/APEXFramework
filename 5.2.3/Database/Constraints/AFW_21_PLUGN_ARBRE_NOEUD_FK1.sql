SET DEFINE OFF;
ALTER TABLE AFW_21_PLUGN_ARBRE_NOEUD ADD (
  CONSTRAINT AFW_21_PLUGN_ARBRE_NOEUD_FK1 
  FOREIGN KEY (REF_PLUGN_ARBRE) 
  REFERENCES AFW_21_PLUGN_ARBRE (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/
