SET DEFINE OFF;
ALTER TABLE AFW_12_LIEN_GADGT_UTILS_PARMT ADD (
  CONSTRAINT AFW_12_LIEN_GADGT_UTILS_P_FK5 
  FOREIGN KEY (REF_GADGT_PARMT_RACRC) 
  REFERENCES AFW_37_GADGT_PARMT_RACRC (SEQNC)
  ENABLE VALIDATE)
/