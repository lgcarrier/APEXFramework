SET DEFINE OFF;
ALTER TABLE AFW_14_DETL_DOMN_VALR ADD (
  CONSTRAINT AFW_14_DETL_DOMN_VALR_FK1 
  FOREIGN KEY (REF_DOMN_VALR) 
  REFERENCES AFW_14_DOMN_VALR (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/
