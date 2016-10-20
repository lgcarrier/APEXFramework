SET DEFINE OFF;
ALTER TABLE AFW_17_PIECE_TELCP_AXIAT ADD (
  CONSTRAINT AFW_17_PIECE_TELCP_AXIAT_FK1 
  FOREIGN KEY (REF_TELCP_AXIAT) 
  REFERENCES AFW_17_TELCP_AXIAT (SEQNC)
  ON DELETE CASCADE
  ENABLE VALIDATE)
/