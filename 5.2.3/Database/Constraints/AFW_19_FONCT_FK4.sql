SET DEFINE OFF;
ALTER TABLE AFW_19_FONCT ADD (
  CONSTRAINT AFW_19_FONCT_FK4 
  FOREIGN KEY (REF_DV_TYPE_ATRIB4) 
  REFERENCES AFW_14_DETL_DOMN_VALR (SEQNC)
  ENABLE VALIDATE)
/
