SET DEFINE OFF;
ALTER TABLE AFW_13_PREFR ADD (
  CONSTRAINT AFW_13_PREFR_FK2 
  FOREIGN KEY (REF_DV_CONDT_SAUVG) 
  REFERENCES AFW_14_DETL_DOMN_VALR (SEQNC)
  ENABLE VALIDATE)
/
