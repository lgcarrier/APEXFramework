SET DEFINE OFF;
ALTER TABLE AFW_01_DESTN_CONFG_EVENM_NOTFB ADD (
  CONSTRAINT AFW_01_DESTN_CONFG_EN_FK1 
  FOREIGN KEY (REF_DV_NATR_DESTN) 
  REFERENCES AFW_14_DETL_DOMN_VALR (SEQNC)
  ENABLE VALIDATE)
/
