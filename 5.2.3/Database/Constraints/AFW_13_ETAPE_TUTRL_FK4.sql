SET DEFINE OFF;
ALTER TABLE AFW_13_ETAPE_TUTRL ADD (
  CONSTRAINT AFW_13_ETAPE_TUTRL_FK4 
  FOREIGN KEY (REF_MESG_TITRE) 
  REFERENCES AFW_01_MESG (SEQNC)
  ENABLE VALIDATE)
/
