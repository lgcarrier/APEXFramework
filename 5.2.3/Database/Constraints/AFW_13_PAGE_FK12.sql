SET DEFINE OFF;
ALTER TABLE AFW_13_PAGE ADD (
  CONSTRAINT AFW_13_PAGE_FK12 
  FOREIGN KEY (REF_MESG_AUCUN_DON_TROUV) 
  REFERENCES AFW_01_MESG (SEQNC)
  ENABLE VALIDATE)
/
