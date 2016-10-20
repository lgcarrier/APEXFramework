SET DEFINE OFF;
ALTER TABLE AFW_12_INSTA_SCENR_NOTFC_LOG ADD (
  CONSTRAINT AFW_12_INSTA_SN_LOG_FK3 
  FOREIGN KEY (REF_INSTA_SCENR_NOTFC) 
  REFERENCES AFW_12_INSTA_SCENR_NOTFC (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/
